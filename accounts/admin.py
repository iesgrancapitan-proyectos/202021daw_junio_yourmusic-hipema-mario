from django.contrib import admin

# Register your models here.
from .models import UserProfileMusicos,Videos,Audios,Generos,UserProfileOjeadores,TipoOjeador

admin.site.register(UserProfileMusicos)
admin.site.register(UserProfileOjeadores)
admin.site.register(TipoOjeador)
admin.site.register(Videos)
admin.site.register(Audios)
admin.site.register(Generos)