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
    canales = Canal.objects.filter(usuarios=usuario)
    # print(canales)

    return render(request, 'conversation.html', {'usuario': usuario, 'canales': canales})


@login_required
def conversation(request, pk):

    canal = Canal.objects.get(id=pk)
    mensajes = canal.mensajes_conver.all().order_by('-date_posted')
    otroUsuario = ""
    for item in canal.usuarios.all():
        if item != request.user:
            otroUsuario = item
    if request.method == 'POST':
        title = request.POST['title']
        text = request.POST['text']
        msg = Mensajes.objects.create(
            title=title, text=text, emisor=request.user, receptor=otroUsuario)
        canal.mensajes_conver.add(msg)
        return redirect('chat:conversation', pk)

    paginator = Paginator(mensajes, 3)

    page_number = request.GET.get('page')
    mensajes_page = paginator.get_page(page_number)

    return render(request, 'mensajes.html', {'mensajes': mensajes_page, 'usuario': request.user, 'otroUsuario': otroUsuario})


@login_required
def contactar(request, pk):
    
    return redirect('chat:conversation', pk)

