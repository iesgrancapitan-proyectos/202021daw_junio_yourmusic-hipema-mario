
from django.urls import path
from . import views
from django.contrib.sitemaps.views import sitemap



app_name = 'foro'
urlpatterns = [
       path('index_foro/', views.index_foro, name='foro'),

]

