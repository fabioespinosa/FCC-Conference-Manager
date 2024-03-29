# Generated by Django 2.2.1 on 2019-08-08 14:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0011_auto_20190808_1356'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='conference',
            name='assistants',
        ),
        migrations.RemoveField(
            model_name='conference',
            name='coordinator',
        ),
        migrations.CreateModel(
            name='ConferenceAssistance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('coordinator', models.BooleanField(default=False)),
                ('join_date', models.DateField(auto_now_add=True)),
                ('assistant', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='database.UserProfile')),
                ('conference', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='database.Conference')),
            ],
        ),
    ]
