# Generated by Django 2.2.1 on 2019-08-08 13:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0010_auto_20190808_1132'),
    ]

    operations = [
        migrations.AddField(
            model_name='conference',
            name='assistants',
            field=models.ManyToManyField(related_name='assistants', to='database.UserProfile'),
        ),
        migrations.AlterField(
            model_name='presentation',
            name='speaker',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='database.UserProfile'),
        ),
        migrations.AlterField(
            model_name='usermessage',
            name='message_from',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='messages_sent', to='database.UserProfile'),
        ),
        migrations.AlterField(
            model_name='usermessage',
            name='message_to',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='messages_received', to='database.UserProfile'),
        ),
    ]
