
from django.urls import path
from . import views
from django.contrib.sitemaps.views import sitemap



app_name = 'ojeador'
urlpatterns = [
       path('index_ojeador/', views.index_ojeador, name='ojeador'),

]
