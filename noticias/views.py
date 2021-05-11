from django.shortcuts import render

# Create your views here.
def index_noticias(request):    
    
    return render(request, 'index_noticias.html')