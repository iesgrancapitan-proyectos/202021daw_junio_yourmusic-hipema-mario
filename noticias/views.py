from django.contrib.auth.models import User
from django.core.paginator import Paginator
from django.http.response import HttpResponse
from django.shortcuts import render
from .models import Noticias
from accounts.models import UserProfileMusicos, UserProfileOjeadores
import datetime

# Create your views here.


def index_noticias(request):
    """ __lte """
    noticias = Noticias.objects.filter(
        created_at__lte=datetime.date.today()).values()
    '''
    created_at, descripcion, id, title, updated_at, userprofilemusicos, userprofileojeadores
    '''
    print("NT")

    noticiasU = []
    usuario = User.objects.all()

    ''' for item in usuario:
        try:
            noticiasU.append(item.userprofilemusicos)
        except Exception:
            try:
                noticiasU.append(item.userprofileojeadores)
            except Exception:
                print("Usuario sin perfil: "+str(item))
    print("noticiasU")
    print(noticiasU) '''

    ''' for item in noticias:

        user = UserProfileMusicos.objects.filter(noticias=item['id']).values()
        if user.count():
            for i in user:
                usuarios.append(i['nombre_profile'])
            pass
        else:
            user = UserProfileOjeadores.objects.filter(
                noticias=item['id']).values()
            for i in user:
                usuarios.append(i['nombre_profile']) '''

    # print(usuarios)

    paginator = Paginator(noticias, 4)

    page_number = request.GET.get('page')
    noticias_page = paginator.get_page(page_number)

    return render(request, 'index_noticias.html', {'noticias':  noticias_page,  'noticiasU': usuario})
