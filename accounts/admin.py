from django.contrib import admin

# Register your models here.
from .models import UserProfileMusicos,Videos,Audios,Generos,UserProfileOjeadores,TipoOjeador,Provincia
from noticias.models import Noticias

admin.site.register(UserProfileMusicos)
admin.site.register(UserProfileOjeadores)
admin.site.register(Provincia)
admin.site.register(Noticias)
# admin.site.register(Ciudad)
admin.site.register(TipoOjeador)
admin.site.register(Videos)
admin.site.register(Audios)
admin.site.register(Generos)