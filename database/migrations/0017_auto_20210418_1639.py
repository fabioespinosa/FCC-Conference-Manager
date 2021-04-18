# Generated by Django 2.2.5 on 2021-04-18 16:39

import django.contrib.auth.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0016_auto_20210418_1606'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='password',
            field=models.CharField(max_length=128),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='username',
            field=models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username'),
        ),
    ]
