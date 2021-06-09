from django.core.paginator import Paginator
from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth import login as make_login
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect, render, reverse, get_object_or_404
from accounts.models import Audios, Provincia, UserProfileMusicos, UserProfileOjeadores, Generos, TipoOjeador, Videos
from .models import Mensajes, Canal
from django.core.exceptions import ObjectDoesNotExist

# Create your views here.


@login_required
def allMessage(request):
    usuario = request.user

    usuario = User.objects.get(username=usuario)
    """   print(usuario.pk)
    print(usuario)
    print(usuario.userprofilemusicos) """
    canales = Canal.objects.filter(usuarios=usuario).order_by('-updated_at')


   
    for item in canales.all():
        print(item)

        if(item.mensajes_conver.all()):
            ''' for i in item.mensajes_conver.all():
                print(i.leido)
                if(i.leido):
                    print("Leído")
                else:
                    led=False    
                    print("NOLeído")
            leidoBol.append(led) '''

           
        else:
            item.delete()                    

    return render(request, 'conversation.html', {'usuario': usuario, 'canales': canales})


@login_required
def conversation(request, pk):

    canal = Canal.objects.get(id=pk)

    if canal.emisor==request.user:
        Canal.objects.filter(id=pk).update(leido_emisor=True)
    else:
        Canal.objects.filter(id=pk).update(leido_receptor=True)
          
    print("FOR")

    ''' for item in canal.mensajes_conver.all():
        Mensajes.objects.filter(id=item.id).update(leido=True)
        
        print(item.leido)

    print("2FOR")
    for item in canal.mensajes_conver.all():        
        print(item.leido) '''
         

    mensajes = canal.mensajes_conver.all().order_by('-date_posted')
    otroUsuario = ""
    for item in canal.usuarios.all():
        if item != request.user:
            otroUsuario = item
    if request.method == 'POST':
       

        text = request.POST['text']
        msg = Mensajes.objects.create(text=text, emisor=request.user, receptor=otroUsuario)
        if 'title' in request.POST:           
            c=Canal.objects.filter(id=pk).update(title=request.POST['title'])
           
            print(c)
        canal.mensajes_conver.add(msg)
        return redirect('chat:conversation', pk)

    paginator = Paginator(mensajes, 3)

    page_number = request.GET.get('page')
    mensajes_page = paginator.get_page(page_number)

    return render(request, 'mensajes.html', {'mensajes': mensajes_page, 'usuario': request.user, 'otroUsuario': otroUsuario,'canal':canal})


@login_required
def contactar(request, pk, tipo):
    us = ""
    usPr = ""
    if(tipo == "grupo"):
        us = UserProfileMusicos.objects.get(id=pk)
        try:
            usPr = request.user.userprofilemusicos
            if(us == usPr):
                return redirect('chat:allMessage')

        except Exception:
            try:
                usPr = request.user.userprofileojeadores
            except Exception:
                return redirect('account:profile')


    else:
        us = UserProfileOjeadores.objects.get(id=pk)
        try:
            usPr = request.user.userprofileojeadores

            if(us == usPr):
                return redirect('chat:allMessage')

        except Exception:
            try:
                usPr = request.user.userprofilemusicos
            except Exception:
                return redirect('account:profile')

    canal = Canal.objects.create()

    canal.usuarios.add(request.user)
    canal.usuarios.add(us.user)
    canal.save()
    print(canal)
    print(canal.id)
    """ Provisional, puede que se quite el campo canal_mensajes de la tabla """
    us.canal_mensajes.add(canal)
    usPr.canal_mensajes.add(canal)

    return redirect('chat:conversation', canal.id)


""" @login_required
def delete(request,pk):
    canal = Canal.objects.get(id=pk)

    try:
        usPr = request.user.userprofilemusicos
    except Exception:
        usPr = request.user.userprofileojeadores
    canal.usuarios.remove(request.user)
    usPr.canal_mensajes.remove(pk)        

    return redirect('chat:allMessage') """
