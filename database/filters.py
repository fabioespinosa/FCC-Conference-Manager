import django_filters
from django import forms
from django.contrib.auth.models import User
from django.db import models
from django.forms.widgets import SelectDateWidget
from django.utils import timezone
from django.db.models.functions import ExtractYear
from database.models import Conference, Presentation


class ConferenceFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='icontains')
    # name = django_filters.ModelChoiceFilter(queryset=Conference.objects.all())
    country = django_filters.ChoiceFilter(
        choices=Conference.objects
        .values_list('country', 'country')
        .order_by('country')
        .distinct('country')
    )

    # start_date = django_filters.ChoiceFilter(lookup_expr='year__gt', choices=Conference.objects.all().annotate(year=ExtractYear('start_date')).distinct().values_list('year', 'year'))
    start_date = django_filters.DateRangeFilter()

    class Meta:
        model = Conference
        fields = ['name', 'country', 'start_date']


class PresentationFilter(django_filters.FilterSet):
    status = django_filters.ChoiceFilter(
        choices=Presentation.objects.
        values_list('status', 'status')
        .order_by('status')
        .distinct('status')
    )

    class Meta:
        model = Presentation
        fields = ['status']
