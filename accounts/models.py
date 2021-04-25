from django.db import models
from django.contrib.auth.models import User
from django.db.models.deletion import CASCADE

# Create your models here.
class Generos(models.Model):
    title = models.CharField(max_length=30)

    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)
class Audios(models.Model):
    url_audio = models.CharField(max_length=500)

    def __unicode__(self):
        return str(self.id)
    def __str__(self) :
        return str(self.id)
    class Meta:
        ordering = ('url_audio',)
class Videos(models.Model):
    url_video = models.CharField(max_length=500)

    def __unicode__(self):
        return str(self.id)
    def __str__(self) :
        return str(self.id)
    class Meta:
        ordering = ('url_video',)
class TipoOjeador(models.Model):
    title = models.CharField(max_length=30)

    def __str__(self) :
        return self.title
    

class UserProfileMusicos(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    nombre_banda = models.CharField(max_length=255)
    avatar=models.ImageField(upload_to='user/imagen',blank=True,null=True)
    generos=models.ManyToManyField(Generos)
    descripcion=models.TextField()
    twitter=models.CharField(max_length=300,blank=True,null=True)
    instagram=models.CharField(max_length=300,blank=True,null=True)
    facebook=models.CharField(max_length=300,blank=True,null=True)
    web=models.CharField(max_length=300,blank=True,null=True)
    email_grupo=models.CharField(max_length=50,blank=True,null=True)
    url_audios=models.ManyToManyField(Audios,blank=True,null=True)
    url_videos=models.ManyToManyField(Videos,blank=True,null=True)
    def __str__(self) :
        return self.nombre_banda
class UserProfileOjeadores(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    nombre_ojeador = models.CharField(max_length=255)
    avatar=models.ImageField(upload_to='user/imagen',blank=True,null=True)
    generos=models.ManyToManyField(Generos)
    descripcion=models.TextField()
    twitter=models.CharField(max_length=300,blank=True,null=True)
    instagram=models.CharField(max_length=300,blank=True,null=True)
    facebook=models.CharField(max_length=300,blank=True,null=True)
    web=models.CharField(max_length=300,blank=True,null=True)
    email_ojeador=models.CharField(max_length=50,blank=True,null=True)
    tipo_ojeador=models.ForeignKey(TipoOjeador,on_delete=models.CASCADE)

    def __str__(self) :
        return self.nombre_ojeador

    


    