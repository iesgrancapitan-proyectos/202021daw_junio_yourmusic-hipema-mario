from django.shortcuts import render

# Create your views here.
def index_foro(request):    
    
    return render(request, 'index_foro.html')