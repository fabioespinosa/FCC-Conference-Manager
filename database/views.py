from django.views import generic
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.contrib.auth.models import User
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.contrib.auth.views import redirect_to_login
from django.shortcuts import render
from django_filters.views import FilterView
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.db.models import Q
from django.views.generic.detail import SingleObjectMixin
from itertools import chain
from django.urls import reverse, reverse_lazy
from django.http import HttpResponse, HttpResponseForbidden, HttpResponseRedirect
from django import forms
from django.contrib.messages.views import SuccessMessageMixin
from django.utils import timezone
from .forms import RegistrationForm, EditPeopleForm, EditConferenceForm, EditPresentationForm
from .forms import PasswordChangeForm
from .models import Conference, Presentation, UserProfile, UserMessage
from .filters import ConferenceFilter


class IndexView(generic.TemplateView):
    template_name = 'database/index.html'

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        user = self.request.user
        if user.is_authenticated:
            userprofile = user.userprofile
            context['conference_list'] = userprofile.user_conferences.all()
            context['presentation_list'] = userprofile.presentation_set.all()
        else:
            context['conference_list'] = Conference.objects.filter(
                start_date__lte=timezone.now()).order_by('-start_date')[:5]
            context['presentation_list'] = Presentation.objects.filter(
                date__lte=timezone.now()).order_by('-date')[:5]

        return context


class RegisterView(SuccessMessageMixin, generic.FormView):
    form_class = RegistrationForm
    template_name = 'database/register.html'
    success_message = "You have successfully been signed up."

    def get_success_url(self):
        return reverse('database:index')

    def get_success_message(self, cleaned_data):
        return self.success_message

    def form_valid(self, form):
        username = form.cleaned_data['username']
        email = form.cleaned_data['email']
        count = len(User.objects.filter(username=username))
        if count > 0:
            form.add_error(field='username', error=forms.ValidationError(
                "That username is taken."))
            return super(RegisterView, self).form_invalid(form)
        # create the user
        user = User.objects.create_user(
            username=username, password=form.cleaned_data['password'], email=email)
        # authenticate the user
        user = authenticate(username=username,
                            password=form.cleaned_data['password'])
        # login the user
        auth_login(self.request, user)
        # now create the user profile and save it to the database
        userprofile = UserProfile(user=user, institution=form.cleaned_data['institution'],
                                  first_name=form.cleaned_data['first_name'], last_name=form.cleaned_data['last_name'],
                                  title=form.cleaned_data['title'], status="user", information=form.cleaned_data['about'])
        userprofile.save()
        return super(RegisterView, self).form_valid(form)


class LogoutView(generic.RedirectView):
    url = reverse_lazy('database:index')

    def get(self, request, *args, **kwargs):
        auth_logout(request)
        return super(LogoutView, self).get(request, *args, **kwargs)


class ConferenceView(LoginRequiredMixin, FilterView):
    template_name = 'database/conferences.html'
    context_object_name = 'conference_list'
    login_url = reverse_lazy('database:login')
    filterset_class = ConferenceFilter


class ConferenceDetailView(LoginRequiredMixin, generic.DetailView):
    model = Conference
    template_name = 'database/conference_detail.html'
    login_url = reverse_lazy('database:login')

    def get_context_data(self, **kwargs):
        context = super(ConferenceDetailView, self).get_context_data(**kwargs)
        context['is_coordinator'] = True
        # print context
        return context

    def get(self, request, *args, **kwargs):
        result = super(ConferenceDetailView, self).get(
            request, *args, **kwargs)

        return result


class ConferenceEditView(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Conference
    success_message = "Conference details updated"
    template_name_suffix = "_edit"
    fields = ['name', 'short_name', 'start_date', 'end_date',
              'category', 'status', 'url', 'country', 'town', 'information']

    def get_success_message(self, cleaned_data):
        return self.success_message


class PresentationView(LoginRequiredMixin, generic.ListView):
    template_name = 'database/presentations.html'
    context_object_name = 'presentation_list'
    login_url = reverse_lazy('database:login')

    def get_queryset(self):
        return Presentation.objects.order_by('-date')


class PresentationDetailView(LoginRequiredMixin, generic.DetailView):
    model = Presentation
    template_name = 'database/presentation_detail.html'
    login_url = reverse_lazy('database:login')


class PresentationEditView(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Presentation
    success_message = "Presentation details updated"
    template_name_suffix = "_edit"
    fields = ['title', 'abstract', 'length', 'date',
              'category', 'group', 'status', 'information']

    def get_success_message(self, cleaned_data):
        return self.success_message


class PeopleView(LoginRequiredMixin, generic.ListView):
    template_name = 'database/people.html'
    context_object_name = 'people_list'
    login_url = reverse_lazy('database:login')

    def get_queryset(self):
        return UserProfile.objects.filter(Q(speaker=True) | Q(coordinator=True)).order_by('-last_name')


class PeopleDetailView(LoginRequiredMixin, SingleObjectMixin, generic.ListView):
    template_name = 'database/people_detail.html'
    login_url = reverse_lazy('database:login')

    def get(self, request, *args, **kwargs):
        self.object = self.get_object(queryset=UserProfile.objects.all())
        return super(PeopleDetailView, self).get(request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        context = super(PeopleDetailView, self).get_context_data(**kwargs)
        context['userprofile'] = self.object
        temp = context['object_list']
        split_index = len(self.object.presentation_set.all())
        context['exist_presentations'] = (split_index > 0)
        context['exist_conferences'] = ((len(temp)-split_index) > 0)
        context['presentation_list'] = temp[:split_index]
        context['conference_list'] = temp[split_index:]
        return context

    def get_queryset(self):
        return list(chain(self.object.presentation_set.all(), self.object.conference_set.all()))


class PeopleEditView(LoginRequiredMixin, SuccessMessageMixin, generic.View):
    model = UserProfile
    success_message = "Profile details updated"
    template_name = "database/people_edit.html"
    fields = ['institution', 'title', 'first_name',
              'last_name', 'status', 'information']

    def get_success_message(self, cleaned_data):
        return self.success_message


class UserProfileDisplay(generic.DetailView):
    model = UserProfile
    template_name = 'database/user_profile_detail.html'

    def get_context_data(self, **kwargs):
        context = super(UserProfileDisplay, self).get_context_data(**kwargs)
        context['form'] = PasswordChangeForm()
        return context


class UserPasswordChange(SingleObjectMixin, SuccessMessageMixin, generic.FormView):
    model = UserProfile
    form_class = PasswordChangeForm
    template_name = 'database/user_profile_detail.html'
    success_message = "Your password was successfully changed."

    def get_success_url(self):
        return reverse('database:user_profile_detail', kwargs={'pk': self.object.pk})

    def get_success_message(self, cleaned_data):
        return self.success_message

    def post(self, request, *args, **kwargs):
        if not request.user.is_authenticated:
            return HttpResponseForbidden()
        self.object = self.get_object()
        return super(UserPasswordChange, self).post(request, *args, **kwargs)

    def form_valid(self, form):
        new_password = form.cleaned_data['new_password']
        user_name = self.request.user.username
        user = User.objects.get(username=user_name)
        if user is not None:
            user.set_password(new_password)
            user.save()
            user = authenticate(username=user_name, password=new_password)
            auth_login(self.request, user)
        else:
            form.add_error(field=None, error=forms.ValidationError(
                "Old password is incorrect."))
            return super(UserPasswordChange, self).form_invalid(form)
        return super(UserPasswordChange, self).form_valid(form)


class UserProfileView(LoginRequiredMixin, generic.View):
    login_url = reverse_lazy('database:login')

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            view = UserProfileDisplay.as_view()
            return view(request, *args, **kwargs)
        else:
            return HttpResponseForbidden()

    def post(self, request, *args, **kwargs):
        view = UserPasswordChange.as_view()
        return view(request, *args, **kwargs)


class UserView(LoginRequiredMixin, generic.DetailView):
    model = User
    template_name = 'database/user_detail.html'
    login_url = reverse_lazy('database:login')


class MessageView(generic.View):

    # Mark message as seen
    def put(self, request, id):
        UserMessage.objects.filter(id=id).update(seen=True)
        return HttpResponse('')


@login_required
def logout_view(request):
    """
    Logout current user (also from CERN)
    """
    if request.user.is_authenticated:
        logout(request)
        callback_url = "https://login.cern.ch/adfs/ls/?wa=wsignout1.0&ReturnUrl="
        callback_url += "http%3A//"
        callback_url += request.META["HTTP_HOST"]
        callback_url += reverse("certhelper:logout_status")
        return HttpResponseRedirect(callback_url)
    return HttpResponseRedirect("/")


def logout_status(request):
    """
    Simple status page which should help determining
    if the logout was successful or not
    """
    logout_successful = not request.user.is_authenticated
    return render(
        request,
        "account/logout_status.html",
        {"logout_successful": logout_successful},
    )
