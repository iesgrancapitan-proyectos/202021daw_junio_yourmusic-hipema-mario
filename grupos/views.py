from django.shortcuts import get_object_or_404, render, redirect, reverse
from accounts.models import UserProfileMusicos,UserProfileOjeadores,Generos
from django.core.paginator import Paginator
from django.views import generic

from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_POST
from django.http import HttpResponseNotFound, JsonResponse




def index(request):
    search = request.GET.get('search') if request.GET.get('search') else ''
    genero_id = request.GET.get('genero_id')
    genero_id = int(genero_id) if genero_id else ''
    '''   tag_id = request.GET.get('tag_id')
    tag_id = int(tag_id) if tag_id else '' '''

    if search:
        grupos = UserProfileMusicos.objects.prefetch_related('elementimages_set').filter(
            title__icontains=search)  # busca sin importar mayus
        # grupos=Element.objects.filter(title__contains=search) #busca literal, coincidencias
    else:
        grupos = UserProfileMusicos.objects.prefetch_related('elementimages_set')

    if genero_id:
        grupos = grupos.filter(genero_id=genero_id)

    ''' if tag_id:
        tag = get_object_or_404(Tag, id=tag_id)
        grupos = grupos.filter(tags__in=[tag]) '''

    grupos = grupos.filter(type=1)
    # grupos = grupos.all()
    paginator = Paginator(grupos, 5)
    generos = Generos.objects.all()

    page_number = request.GET.get('page')
    grupos_page = paginator.get_page(page_number)
    return render(request, 'indexGrupos.html', {'grupos': grupos_page, 'generos': generos, 'search': search, 'genero_id': genero_id, })
