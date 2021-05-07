import os
from django.conf import settings
from django.shortcuts import redirect, render, reverse
from django.contrib.auth.decorators import login_required
#from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login as make_login
from .forms import CustomUserCreationForm, UserProfileForm
from .models import UserProfileMusicos, UserProfileOjeadores
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view
from django.contrib.auth.models import User
from rest_framework.response import Response
from django.contrib.auth.hashers import check_password


@api_view(['POST'])
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

    return Response(token.key)


@login_required
def user_data(request):
    usuario=request.user
    
    return render(request, 'user_data.html',{'usuario':usuario})



@login_required
def info_data(request,tipo):
    usuario=request.user

    form = UserProfileForm()
    userprofile = ""

    
       
    if request.method == 'POST':
        if tipo=="musico":
            userprofile = UserProfileMusicos.objects.get(user=request.user)
        elif tipo=="ojeador":
            userprofile = UserProfileOjeadores.objects.get(user=request.user)
        else:
            return render(request, 'indexGrupos.html')
        
        pathOldAvatar = None
        # Actualizar imagen
        try:
           
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
            userprofile.save()
    
    return render(request, 'info_data.html',{'usuario':userprofile,'tipo':tipo,'form': form})

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
            userprofile = User.objects.get(username=request.user)
            tipo = "admin"

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

    return render(request, 'profile.html', {'usuario': userprofile,'tipo':tipo})


def register(request):
    form = CustomUserCreationForm()

    if request.method == 'POST':
        form = CustomUserCreationForm(data=request.POST)

        if form.is_valid():
            user = form.save()
            if user is not None:
                make_login(request, user)
                return redirect(reverse('account:profile'))
    return render(request, 'register.html', {'form': form})
