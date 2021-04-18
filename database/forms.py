from django import forms
from haystack.forms import SearchForm
from .models import Conference, Presentation, UserProfile
from django.contrib.auth import get_user_model


class RegistrationForm(forms.Form):
    title_choices = (
        ('Dr.', 'Dr.'),
        ('Mr.', 'Mr.'),
        ('Mrs.', 'Mrs.'),
        ('Ms.', 'Ms.'),
    )
    username = forms.CharField(required=True)
    title = forms.ChoiceField(required=True, choices=title_choices)
    first_name = forms.CharField(required=True)
    last_name = forms.CharField(required=True)
    email = forms.EmailField(required=True)
    institution = forms.CharField(required=True)
    password = forms.CharField(widget=forms.PasswordInput)
    confirm_password = forms.CharField(widget=forms.PasswordInput)
    about = forms.CharField(widget=forms.TextInput)

    def clean(self):
        cleaned_data = super(RegistrationForm, self).clean()
        np = cleaned_data.get('password')
        cp = cleaned_data.get('confirm_password')
        if np and cp:
            if len(np) < 8:
                raise forms.ValidationError(
                    "New password must be at least 8 characters")
            elif np == "password":
                raise forms.ValidationError("Password is too common")
            elif np != cp:
                raise forms.ValidationError("Passwords must match")


class PasswordChangeForm(forms.Form):
    # TODO: confirm old_password is actually his old password
    # old_password = forms.CharField(widget=forms.PasswordInput)
    new_password = forms.CharField(widget=forms.PasswordInput)
    confirm_new_password = forms.CharField(widget=forms.PasswordInput)

    def clean(self):
        cleaned_data = super(PasswordChangeForm, self).clean()
        np = cleaned_data.get('new_password')
        cnp = cleaned_data.get('confirm_new_password')
        if np and cnp:
            if len(np) < 8:
                raise forms.ValidationError(
                    "New password must be at least 8 characters")
            elif np == "password":
                raise forms.ValidationError("Password is too common")
            elif np != cnp:
                raise forms.ValidationError("Passwords must match")


class EditConferenceForm(forms.ModelForm):
    class Meta:
        model = Conference
        exclude = ['coordinator']


class EditPresentationForm(forms.ModelForm):
    class Meta:
        model = Presentation
        exclude = ['speaker', 'conference']


class EditPeopleForm(forms.ModelForm):
    class Meta:
        model = get_user_model()
        exclude = ['user', 'speaker', 'coordinator']


class CustomSearchForm(SearchForm):
    CONFERENCE = '1'
    PRESENTATION = '2'
    PERSON = '3'
    MODEL_CHOICES = (
        (CONFERENCE, 'Conference'),
        (PRESENTATION, 'Presentation'),
        (PERSON, 'Person'),
    )
    searching_for = forms.ChoiceField(choices=MODEL_CHOICES, required=True)
    filter_start_date = forms.DateField(required=False, label="Start date")
    filter_end_date = forms.DateField(required=False, label="End date")

    def search(self):
        # First, store the SearchQuerySet received from other processing.
        sqs = super(CustomSearchForm, self).search()

        if not self.is_valid():
            return self.no_query_found()

        if self.cleaned_data['searching_for'] == self.CONFERENCE:
            sqs = sqs.models(Conference)
            if self.cleaned_data['filter_start_date']:
                sqs = sqs.filter(
                    end_date__gte=self.cleaned_data['filter_start_date'])
            if self.cleaned_data['filter_end_date']:
                sqs = sqs.filter(
                    start_date__lte=self.cleaned_data['filter_end_date'])

        elif self.cleaned_data['searching_for'] == self.PRESENTATION:
            sqs = sqs.models(Presentation)

            if self.cleaned_data['filter_start_date']:
                sqs = sqs.filter(
                    date__lte=self.cleaned_data['filter_start_date'])
            if self.cleaned_data['filter_end_date']:
                sqs = sqs.filter(
                    date__gte=self.cleaned_data['filter_end_date'])
        else:
            sqs = sqs.models(get_user_model())
        # Check to see if a start_date was chosen.

        # Check to see if an end_date was chosen.
        # if self.cleaned_data['filter_end']:
        #    sqs = sqs.filter(pub_date__lte=self.cleaned_data['filter_end'])

        return sqs
