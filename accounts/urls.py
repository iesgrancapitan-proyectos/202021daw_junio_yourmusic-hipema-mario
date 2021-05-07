
from django.urls import path
from . import views


app_name='account'
urlpatterns = [
    path('user_data/', views.user_data, name='user_data'),
    path('info_data/<str:tipo>', views.info_data, name='info_data'),
    path('profile/', views.profile,name='profile'),
    path('register/', views.register,name='register'),
    path('login',views.login)
]
