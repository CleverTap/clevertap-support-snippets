CleverTapAPI cleverTapAPI = CleverTapAPI.getInstance(getApplicationContext());
cleverTapAPI.createNotificationChannel(getApplicationContext(),"YourChannelId","YourChannelName","YourChannelDescription",NotificationManager.IMPORTANCE_MAX,"YourGroupId",true);
