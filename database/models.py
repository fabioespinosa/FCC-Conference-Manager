from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse


class UserProfile(models.Model):
    # UserProfile is different then auth_user,
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    institution = models.CharField(max_length=200)
    title = models.CharField(max_length=50)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=200)
    status = models.TextField()
    information = models.TextField()
    speaker = models.BooleanField(default=False)
    coordinator = models.BooleanField(default=False)

    def __str__(self):
        return self.last_name + ", " + self.first_name

    def get_absolute_url(self):
        return reverse('database:people_detail', args=[str(self.id)])


class Conference(models.Model):
    coordinator = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    name = models.TextField()
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


class Presentation(models.Model):
    conference = models.ForeignKey(Conference, on_delete=models.CASCADE)
    speaker = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    title = models.TextField()
    abstract = models.TextField()
    date = models.DateField('Presentation Date')
    category = models.CharField(max_length=200)
    group = models.CharField(max_length=200)
    status = models.TextField()
    information = models.TextField()

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('database:presentation_detail', kwargs={"pk": str(self.id), "conference_id": str(self.conference.id)})
