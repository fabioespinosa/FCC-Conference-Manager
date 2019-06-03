from django.contrib import admin

from .models import Conference, Presentation, UserProfile

admin.site.register(Conference)
admin.site.register(Presentation)
admin.site.register(UserProfile)
