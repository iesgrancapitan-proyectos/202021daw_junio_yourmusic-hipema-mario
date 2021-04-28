
from django.urls import path
from . import views
from django.contrib.sitemaps.views import sitemap



app_name = 'grupos'
urlpatterns = [
    path('', views.index, name='index'),

]
