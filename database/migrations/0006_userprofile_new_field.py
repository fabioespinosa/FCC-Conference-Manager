# Generated by Django 2.2.1 on 2019-06-25 08:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0005_remove_presentation_length'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='new_field',
            field=models.BooleanField(default=False),
        ),
    ]