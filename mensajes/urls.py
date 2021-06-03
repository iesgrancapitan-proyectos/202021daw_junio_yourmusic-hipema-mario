
from django.urls import path
from . import views


app_name='menssage'
urlpatterns = [
    path('allMessage', views.allMessage, name='allMessage'),
    path('conversation/<int:receptor>/<int:emisor>', views.allMessage, name='allMessage'),
    
]
