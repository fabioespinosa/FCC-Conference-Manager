import django_filters
from django import forms
from django.contrib.auth.models import User
from django.db import models
from django.forms.widgets import SelectDateWidget
from django.utils import timezone
from database.models import Conference


class ConferenceFilter(django_filters.FilterSet):
    name = django_filters.ModelChoiceFilter(queryset=Conference.objects.all())
    country = django_filters.ChoiceFilter(
        choices=Conference.objects
        .values_list('country', 'country')
        .order_by('country')
        .distinct('country')
    )
    year = django_filters.ChoiceFilter(
        choices=Conference.objects.all().dates('start_date', 'year')
    )

    class Meta:
        model = Conference
        fields = ['name', 'country', 'year']
