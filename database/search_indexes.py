from haystack import indexes
from database.models import Conference, Presentation, UserProfile
from django.contrib.auth import get_user_model


class ConferenceIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.CharField(document=True, use_template=True)
    start_date = indexes.DateField(model_attr="start_date")
    end_date = indexes.DateField(model_attr="end_date")

    def get_model(self):
        return Conference

    def index_queryset(self, using=None):
        return self.get_model().objects.all()


class PresentationIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.CharField(document=True, use_template=True)
    date = indexes.DateField(model_attr="date")

    def get_model(self):
        return Presentation

    def index_queryset(self, using=None):
        return self.get_model().objects.all()


class ProfileIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.CharField(document=True, use_template=True)

    def get_model(self):
        return get_user_model()

    def index_queryset(self, using=None):
        return self.get_model().objects.all()
