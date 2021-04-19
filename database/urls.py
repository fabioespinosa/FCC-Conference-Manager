from django.conf import settings
from django.conf.urls import url
from django.urls import include, path
from django.contrib.auth import views as auth_views
from django_filters.views import FilterView
from . import views, search_views

app_name = 'database'
urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name='index'),
    url(r'^login/$', auth_views.LoginView.as_view(), name='login'),
    url(r'^register/$', views.RegisterView.as_view(), name='register'),
    url(r'^search/', search_views.CustomSearchView.as_view(), name='search'),
    url(r'^logout/$', views.LogoutView.as_view(), name='logout'),
    url(r'^conference/$', views.ConferenceView.as_view(), name='conferences'),
    url(r'^conference/(?P<pk>[0-9]+)/$',
        views.ConferenceDetailView.as_view(), name='conference_detail'),
    url(r'^conference/edit/(?P<pk>[0-9]+)/$',
        views.ConferenceEditView.as_view(), name='conference_edit'),
    url(r'^presentations/$', views.PresentationView.as_view(), name='presentations'),
    url(r'^conference/(?P<conference_id>[0-9]+)/presentation/(?P<pk>[0-9]+)/$', views.PresentationDetailView.as_view(),
        name='presentation_detail'),
    url(r'^conference/(?P<conference_id>[0-9]+)/presentation/edit/(?P<pk>[0-9]+)/$', views.PresentationEditView.as_view(),
        name='presentation_edit'),
    url(r'^people/$', views.PeopleView.as_view(), name='people'),
    url(r'^people/(?P<pk>[0-9]+)/$',
        views.PeopleDetailView.as_view(), name='people_detail'),
    url(r'^people/edit/(?P<pk>[0-9]+)/$',
        views.PeopleEditView.as_view(), name='people_edit'),
    url(r'^profile/(?P<pk>[0-9]+)/$',
        views.UserProfileView.as_view(), name='user_profile_detail'),
    url(r'^user/(?P<pk>[0-9]+)/$',
        views.UserView.as_view(), name='user_detail'),

    url(r"^logout/", views.logout_view, name="logout"),
    url(r"^logout-status/", views.logout_status, name="logout_status"),
    url(r"^messages/(?P<id>[0-9]+)/$",
        views.MessageView.as_view(), name="user_message")
]
