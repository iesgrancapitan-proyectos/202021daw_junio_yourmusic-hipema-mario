
from django.urls import path
from . import views
from django.contrib.sitemaps.views import sitemap



app_name = 'store'
urlpatterns = [
    path('', views.index, name='index'),

]
