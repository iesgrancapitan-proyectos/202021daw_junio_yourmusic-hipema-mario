import os
from pathlib import Path
from django.conf import settings
from django.forms.fields import NullBooleanField
from django.http.response import HttpResponseRedirect
from django.shortcuts import redirect, render, reverse, get_object_or_404
from django.contrib.auth.decorators import login_required
#from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login as make_login
from .forms import FormEntrada, UserUpdateForm, CustomUserCreationForm, UserProfileForm

from .models import Audios, UserProfileMusicos, UserProfileOjeadores, Generos, TipoOjeador, Videos
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from rest_framework.authtoken.models import Token
from django.contrib.auth import authenticate, login
from rest_framework.decorators import api_view
from django.contrib.auth.models import User
from rest_framework.response import Response
from django.contrib.auth.hashers import check_password
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from django.contrib import messages


""" @api_view(['POST'])
def login(request):
    username = request.POST.get('username')
    password = request.POST.get('password')

    try:
        user = User.objects.get(username=username)
    except User.DoesNotExist:
        return Response('Usuario inválido')

    pwd_valid = check_password(password, user.password)

    if not pwd_valid:
        return Response('Contraseña inválida')
    token, _ = Token.objects.get_or_create(user=user)

    return Response(token.key) """


@login_required
def noticias_user(request):
    usuario = request.user

    return render(request, 'noticias_user.html', {'usuario': usuario})


def user_data(request, pk):
    # usuario=request.user
    usuario = get_object_or_404(User, pk=pk)
    form = UserUpdateForm(instance=usuario)
    username = usuario.username
    email = usuario.email
    error = []

    if request.method == 'POST':
        print(request)
        print(request.method)

        password = request.POST.get('password')

        pwd_valid = check_password(password, usuario.password)
        if not pwd_valid:
            error.append("Contraseña inválida")
            return render(request, 'user_data.html', {'form': form, 'usuario': usuario, 'error': error})
        else:
            error.append(" ")

        if username != request.POST['nombre']:
            u = User.objects.filter(username=request.POST['nombre'])
            if u.count():
                error.append("El nombre de usuario ya está registrado")
                print("Nombre ya existente")
                return render(request, 'user_data.html', {'form': form, 'usuario': usuario, 'error': error})
            else:
                User.objects.filter(username=username).update(
                    username=request.POST['nombre'])
        else:
            error.append(" ")

        if email != request.POST['email']:
            u = User.objects.filter(email=request.POST['email'])
            if u.count():
                error.append("El email ya está registrado")
                print("Email ya existente")
                return render(request, 'user_data.html', {'form': form, 'usuario': usuario, 'error': error})
            else:
                User.objects.filter(username=username).update(
                    email=request.POST['email'])
        else:
            error.append(" ")

        try:
            if request.POST['pass']:
                uspass = User.objects.get(username=request.POST['nombre'])
                uspass.set_password(request.POST['pass2'])
                uspass.save()

                update_session_auth_hash(request, uspass)

                user = authenticate(
                    username=request.POST['nombre'], password=request.POST['pass2'])
                login(request, user)

        except Exception:
            pass

        return redirect('account:profile')

    else:
        form = PasswordChangeForm(request.user)

    return render(request, 'user_data.html', {'form': form, 'usuario': usuario, 'error': error})


@login_required
def mensajes(request):
    usuario = request.user

    return render(request, 'mensajes.html', {'usuario': usuario})


@login_required
def info_data(request, tipo, pk=None, code=None):

    form = UserProfileForm()
    genero_id = []
    tipos = []
    tip_user = ""
    videos = ""
    audios = ""
    infoData = False
    videosData = False
    audiosData = False
    redesData = False
    ojData = False

    if tipo == "musico":
        userprofile = UserProfileMusicos.objects.get(user=request.user)
        genero_id = Generos.objects.filter(userprofilemusicos=userprofile.id)
        videos = Videos.objects.filter(userprofilemusicos=userprofile.id)
        audios = Audios.objects.filter(userprofilemusicos=userprofile.id)
    elif tipo == "ojeador":
        userprofile = UserProfileOjeadores.objects.get(user=request.user)
        genero_id = Generos.objects.filter(userprofileojeadores=userprofile.id)
        tipos = TipoOjeador.objects.all()
        tip_user = userprofile.tipo_ojeador
    else:
        return render(request, 'indexGrupos.html')

    generos = Generos.objects.all()

    pkDelete = pk if pk else None
    codePk = code if code else None

    if(codePk==0):
        if(pkDelete):
            try:            
                pathOldAvatar = os.path.join("static/media/", str(userprofile.url_audios.get(id=pkDelete).url_audio))        
                
                if pathOldAvatar is not None and os.path.isfile(pathOldAvatar):
                    print("Eliminado")
                    userprofile.url_audios.remove(pkDelete) 
                    Audios.objects.get(id=pkDelete).delete() 
                    os.remove(pathOldAvatar)
                    
                    
                    return redirect('account:info_data',tipo)
                    

            except print(0):
                return redirect('account:info_data',tipo)
    if(codePk==1):
        if(pkDelete):
            try:
                print("Eliminado video")
                userprofile.url_videos.remove(pkDelete) 
                Videos.objects.get(id=pkDelete).delete() 
                
                return redirect('account:info_data',tipo)
                    

            except print(0):
                return redirect('account:info_data',tipo)



    if request.method == 'POST':
        pathOldAvatar = None
        print("INFOR")

        # Obtener el tipo de submit que se envía
        for item in request.POST:
            if(item == 'info'):
                infoData = True
            elif (item == 'redes'):
                redesData = True
            elif (item == 'audio'):
                audiosData = True
            elif (item == 'video'):
                videosData = True
            elif (item == 'ojeador'):
                ojData = True
           

        if(infoData):
            print("info")
            # Actualizar imagen

            if 'foto' in request.FILES:
                print("Existe")
                    # Obtenemos la ruta de la imagen anterior
                pathOldAvatar = os.path.join(
                    "static/media/", str(userprofile.avatar))
                if pathOldAvatar is not None and os.path.isfile(pathOldAvatar):
                    os.remove(pathOldAvatar)
                    userprofile.avatar =request.FILES['foto']
                    print("Actualizada imagen")
                else:                
                    userprofile.avatar=request.FILES['foto']
                    print("Actualizada imagen sin eliminar")

            else:
                print("No existe")
           
          

            # Actualizar nombre
            if(request.POST['nombre']):
                userprofile.nombre_profile = request.POST['nombre']
                userprofile.save()
                print(userprofile)

            # Actualizar generos
            userprofile.generos.clear()
            for item in request.POST.getlist('generos'):
                gen = Generos.objects.get(id=item)
                userprofile.generos.add(gen)

            # Actualizar descripción
            if(request.POST['descripcion']):
                userprofile.descripcion = request.POST['descripcion']
                userprofile.save()

            # return render(request, 'info_data.html',{'usuario':userprofile,'tipo':tipo,'form': form,'generos':generos,'genero_id':genero_id,'tipos':tipos,'tip':tip_user,'videos':videos,'audios':audios})
        # Comprobación de redes sociales
        if(redesData):
            print("redesData: "+str(redesData))
            # No se permite meter campos vacíos
            if(request.POST['twitter']):
                userprofile.twitter = request.POST['twitter']
                userprofile.save()
            if(request.POST['instagram']):
                userprofile.instagram = request.POST['instagram']
                userprofile.save()
            if(request.POST['facebook']):
                userprofile.facebook = request.POST['facebook']
                userprofile.save()
            if(request.POST['web']):
                userprofile.web = request.POST['web']
                userprofile.save()
            if(request.POST['email_profile']):
                userprofile.email_profile = request.POST['email_profile']
                userprofile.save()

            print("redes")

        if(audiosData):
            ''' form = FormEntrada(request.POST, request.FILES)
            if form.is_valid(): '''
            titulo = request.POST['titAudio']
            archivo = request.FILES['filAudio']

            insert = Audios.objects.create(title=titulo, url_audio=archivo)
            userprofile.url_audios.add(insert)

            # return render(request, 'info_data.html', {'usuario': userprofile, 'tipo': tipo, 'form': form, 'generos': generos, 'genero_id': genero_id, 'tipos': tipos, 'tip': tip_user, 'videos': videos, 'audios': audios})
            # return HttpResponseRedirect(reverse('index'))
            '''  else:
                    messages.error(request, "Error al procesar el formulario")
             '''
            print("audio")

        if(videosData):
            vi = Videos.objects.create(
                title=request.POST['titVideo'], url_video=request.POST['enlVideo'])
            userprofile.url_videos.add(vi)
            print("video")

        if(ojData):
            ti = TipoOjeador.objects.get(id=request.POST['tipos'])
            userprofile.tipo_ojeador = ti
            userprofile.save()

    return render(request, 'info_data.html', {'usuario': userprofile, 'tipo': tipo, 'form': form, 'generos': generos, 'genero_id': genero_id, 'tipos': tipos, 'tip': tip_user, 'videos': videos, 'audios': audios})


@login_required
def profile(request):

    # form = UserProfileForm()
    tipo = ""
    userprofile = ""
    try:
        userprofile = UserProfileMusicos.objects.get(user=request.user)
        tipo = "musico"
    except UserProfileMusicos.DoesNotExist:
        try:
            userprofile = UserProfileOjeadores.objects.get(user=request.user)
            tipo = "ojeador"
        except UserProfileOjeadores.DoesNotExist:            
            tipo = "sin"
            return redirect('account:choose_profile')

    # print(tipo+str(userprofile))

    ''' if request.method == 'POST':
        pathOldAvatar = None
        # Actualizar imagen
        try:
            userprofile = UserProfileMusicos.objects.get(user=request.user)
            form = UserProfileForm(
                request.POST, request.FILES, instance=userprofile)

            # Obtenemos la ruta de la imagen anterior
            pathOldAvatar = os.path.join(
                settings.MEDIA_ROOT, userprofile.avatar.name)
        except ObjectDoesNotExist:
            form = UserProfileForm(request.POST, request.FILES)

        if form.is_valid():
            # Se comprueba si la ruta no está vacía y se borra la imagen anterior
            if pathOldAvatar is not None and os.path.isfile(pathOldAvatar):
                os.remove(pathOldAvatar)

            userprofile = form.save(commit=False)
            userprofile.user = request.user
            userprofile.save()  '''

    return render(request, 'profile.html', {'usuario': userprofile, 'tipo': tipo})

@login_required
def choose_profile(request):
    userprofile=User.objects.get(username=request.user)
    return render(request, 'choose_profile.html', {'userprofile': userprofile})

def register(request):
    error=[]
    nombre=""
    email=""
    registrar=False
    if request.method == 'POST':            
        usuario=User.objects.filter(username=request.POST['username'])
        if usuario.count():
            error.append("El nombre de usuario ya existe")
            print("Nombre ya existente")
            registrar=False       
        else:
            registrar=True
            error.append(" ")
            nombre=request.POST['username']

        usuario=User.objects.filter(email=request.POST['email'])

        if usuario.count():
            error.append("El correo introducido ya está registrado")
            print("Correo ya existente")
            registrar=False
        else:
            registrar=True
            error.append(" ")
            email=request.POST['email']
        
        if registrar:
            user = User.objects.create_user(nombre,email,request.POST['password'])
            make_login(request, user)
            return redirect('account:choose_profile')
        
    ''' form = CustomUserCreationForm()

    if request.method == 'POST':
        form = CustomUserCreationForm(data=request.POST)

        if form.is_valid():
            user = form.save()
            if user is not None:
                make_login(request, user)
                return redirect(reverse('account:profile')) '''
    return render(request, 'register.html', {'error':error })
