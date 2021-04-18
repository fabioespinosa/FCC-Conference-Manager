

# We want the user messages to show in all views
def user_messages(request):
    user = request.user
    message_list = {'message_list': []}
    if user.is_authenticated:
        message_list['message_list'] = user.messages_received.filter(
            seen=False)

    return message_list
