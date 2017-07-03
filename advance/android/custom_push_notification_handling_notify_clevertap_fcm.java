
String fcmRegId = FirebaseInstanceId.getInstance().getToken();
cleverTapAPI.data.pushFcmRegistrationId(fcmRegId,true);
