from django.core.paginator import Paginator
from django.shortcuts import render
from .models import Noticias
import datetime

# Create your views here.


def index_noticias(request):
    """ __lte """
    noticias = Noticias.objects.filter(created_at__lte=datetime.date.today())

    # noticias = noticias.all()

    paginator = Paginator(noticias, 4)

    page_number = request.GET.get('page')
    noticias_page = paginator.get_page(page_number)

    return render(request, 'index_noticias.html', {'noticias':  noticias_page})
