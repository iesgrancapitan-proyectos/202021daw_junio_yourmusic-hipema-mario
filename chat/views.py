from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth import login as make_login
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect, render, reverse, get_object_or_404
from accounts.models import Audios, Provincia, UserProfileMusicos, UserProfileOjeadores, Generos, TipoOjeador, Videos
from .models import Mensajes,Canal
from django.core.exceptions import ObjectDoesNotExist

# Create your views here.


@login_required
def allMessage(request):
    usuario = request.user

    usuario = User.objects.get(username=usuario)
    print(usuario.pk)
    print(usuario)
    print(usuario.userprofilemusicos)

    
    userprofile = ""
   
    ''' try:
            userprofile = UserProfileMusicos.objects.get(user=request.user)

        except ObjectDoesNotExist:
            userprofile = UserProfileOjeadores.objects.get(user=request.user)
        """  conversaciones_iniciadas = Conversation.objects.filter(receptor_id=usuario)
        conversaciones_recibidas = Conversation.objects.filter(emisor_id=usuario) """
        us = UserProfileMusicos.objects.filter(
            conversation=conversaciones_iniciadas)
        print(us)
    '''
    return render(request, 'mensajes.html', {'usuario': usuario, "emisor": conversaciones_iniciadas, "receptor": conversaciones_recibidas})


@login_required
def conversation(request):

    pass
