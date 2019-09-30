# from django.contrib.auth.models import User
from .models import UserProfile


# We want the user messages to show in all views
def user_messages(request):
    user = request.user
    message_list = {'message_list': []}
    if user.is_authenticated:
        userprofile = UserProfile.objects.get_or_create(user=user)
        message_list['message_list'] = userprofile.messages_received.filter(
            seen=False)

    return message_list
