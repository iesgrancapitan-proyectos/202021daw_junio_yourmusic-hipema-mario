
from django.urls import path
from . import views


app_name='chat'
urlpatterns = [
    path('allMessage', views.allMessage, name='allMessage'),
    path('conversation/<int:receptor>/<int:emisor>', views.allMessage, name='allMessage'),
    
]
