
from django.urls import path
from . import views


app_name='chat'
urlpatterns = [
    path('allMessage', views.allMessage, name='allMessage'),
    path('conversation/<int:pk>', views.conversation, name='conversation'),
    path('contactar/<int:pk>/<str:tipo>', views.contactar, name='contactar'),
    
]
