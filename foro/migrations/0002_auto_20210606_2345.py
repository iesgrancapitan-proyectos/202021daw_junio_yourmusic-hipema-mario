# Generated by Django 3.1.7 on 2021-06-06 21:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('foro', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tema_foro',
            name='post_foro',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='foro.post'),
        ),
    ]
