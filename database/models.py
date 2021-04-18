from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User, AbstractUser
from django.contrib.auth import get_user_model
from django.urls import reverse
from django.conf import settings


class UserProfile(AbstractUser):
    # UserProfile is different than auth_user,
    # user = models.OneToOneField(User, on_delete=models.CASCADE)
    institution = models.CharField(max_length=200, null=True)
    title = models.CharField(max_length=50, null=True)
    first_name = models.CharField(max_length=150, null=True)
    last_name = models.CharField(max_length=200, null=True)
    password = models.CharField(max_length=128)
    status = models.TextField(null=True)
    information = models.TextField(null=True)
    speaker = models.BooleanField(default=False)
    coordinator = models.BooleanField(default=False)

    def __str__(self):
        return self.last_name + ", " + self.first_name

    def get_absolute_url(self):
        return reverse('database:people_detail', args=[str(self.id)])


class UserMessage(models.Model):
    # Message sent to users (usually from admin)
    message = models.TextField()
    seen = models.BooleanField(default=False)
    message_to = models.ForeignKey(
        get_user_model(), related_name='messages_received', on_delete=models.CASCADE)
    message_from = models.ForeignKey(
        get_user_model(), related_name='messages_sent', on_delete=models.CASCADE)

    def __str__(self):
        return self.message

    def get_absolute_url(self):
        return reverse('database:message_detail', args=[str(self.id)])


class Conference(models.Model):
    name = models.TextField()
    assistants = models.ManyToManyField(
        get_user_model(), through='ConferenceAssistance', through_fields=('conference', 'assistant'), related_name="user_conferences")
    short_name = models.CharField(max_length=200)
    start_date = models.DateField('Start Date')
    end_date = models.DateField('End Date')
    category = models.CharField(max_length=200)
    status = models.TextField()
    url = models.URLField(max_length=500)
    country = models.CharField(max_length=300)
    town = models.CharField(max_length=200)
    information = models.TextField()

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('database:conference_detail', args=[str(self.id)])


class ConferenceAssistance(models.Model):
    conference = models.ForeignKey(Conference, on_delete=models.CASCADE)
    assistant = models.ForeignKey(
        get_user_model(), on_delete=models.CASCADE)
    coordinator = models.BooleanField(default=False)
    join_date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.conference + '-' + self.assistant


presentation_states = (
    ('pending', 'pending'),
    ('approved', 'approved'),
)


class Presentation(models.Model):
    conference = models.ForeignKey(Conference, on_delete=models.CASCADE)
    speaker = models.ForeignKey(
        get_user_model(), null=True, on_delete=models.CASCADE)
    title = models.TextField()
    abstract = models.TextField()
    date = models.DateField('Presentation Date')
    category = models.CharField(max_length=200)
    group = models.CharField(max_length=200)
    status = models.TextField()
    state = models.CharField(
        max_length=20, choices=presentation_states, default='pending'
    )
    information = models.TextField()
    presentation_file = models.FileField(blank=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('database:presentation_detail', kwargs={"pk": str(self.id), "conference_id": str(self.conference.id)})
