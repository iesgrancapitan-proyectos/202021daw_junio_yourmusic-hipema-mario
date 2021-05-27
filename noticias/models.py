from django.db import models

# Create your models here.

class Noticias(models.Model):
    title = models.CharField(max_length=30)
    descripcion=models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)