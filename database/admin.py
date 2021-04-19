from django.contrib import admin

from .models import Conference, Presentation, UserMessage
from django.contrib.auth import get_user_model


class ConferenceAdmin(admin.ModelAdmin):
    search_fields = ['name']


admin.site.register(Conference, ConferenceAdmin)
admin.site.register(Presentation)
admin.site.register(get_user_model())
admin.site.register(UserMessage)
