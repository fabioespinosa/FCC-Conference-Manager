from django.contrib import admin

from .models import Conference, Presentation, UserProfile, UserMessage


class ConferenceAdmin(admin.ModelAdmin):
    search_fields = ['name']


admin.site.register(Conference, ConferenceAdmin)
admin.site.register(Presentation)
admin.site.register(UserProfile)
admin.site.register(UserMessage)
