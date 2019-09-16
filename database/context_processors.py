# from django.contrib.auth.models import User


# We want the user messages to show in all views
def user_messages(request):
    user = request.user
    message_list = {'message_list': []}
    if user.is_authenticated:
        userprofile = user.userprofile
        message_list['message_list'] = userprofile.messages_received.filter(
            seen=False)

    return message_list