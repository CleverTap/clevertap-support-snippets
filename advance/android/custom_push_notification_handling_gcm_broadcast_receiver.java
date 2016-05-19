Bundle extras = intent.getExtras();
GoogleCloudMessaging gcm = GoogleCloudMessaging.getInstance(context);
String messageType = gcm.getMessageType(intent);
if (GoogleCloudMessaging. MESSAGE_TYPE_MESSAGE.equals(messageType)) {
  CleverTapAPI.createNotification(context, extras);
}

