# Generated by Django 3.1.7 on 2021-06-09 18:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chat', '0005_auto_20210609_1952'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mensajes',
            name='leido',
            field=models.BooleanField(default=False),
        ),
    ]