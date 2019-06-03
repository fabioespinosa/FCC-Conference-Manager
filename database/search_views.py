from haystack.generic_views import SearchView
from . import forms
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy


class CustomSearchView(LoginRequiredMixin, SearchView):
    form_class = forms.CustomSearchForm
    template_name = "search/search.html"
    login_url = reverse_lazy('database:login')

    def get_context_data(self, **kwargs):
        context = super(CustomSearchView, self).get_context_data(**kwargs)
        return context
