from django.contrib.auth.models import User
from django.db import models

class Mensajes(models.Model):    
    title=models.CharField(max_length=300)
    text=models.TextField()
    date_posted=models.DateTimeField(auto_now_add=True)
    receptor=models.ForeignKey(User,related_name="receptor",on_delete=models.CASCADE)
    emisor=models.ForeignKey(User,related_name="emisor",on_delete=models.CASCADE)

    def __str__(self):
        return 'Mensaje #{}'.format(self.id)