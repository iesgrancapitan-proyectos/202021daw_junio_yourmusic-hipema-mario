# Generated by Django 3.1.7 on 2021-04-13 10:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_auto_20210413_1239'),
    ]

    operations = [
        migrations.RenameField(
            model_name='userprofilemusicos',
            old_name='informacion',
            new_name='descripcion',
        ),
    ]
