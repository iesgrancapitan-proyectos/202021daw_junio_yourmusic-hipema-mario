# Generated by Django 3.1.7 on 2021-05-04 16:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0016_auto_20210504_1840'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofilemusicos',
            name='avatar',
            field=models.ImageField(blank=True, null=True, upload_to='user/img'),
        ),
    ]