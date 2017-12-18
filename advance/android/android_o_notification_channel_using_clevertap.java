CleverTapAPI cleverTapAPI = CleverTapAPI.getInstance(getApplicationContext());
cleverTapAPI.createNotificationChannel(getApplicationContext(),"YourChannelId","Your Channel Name","Your Channel Description",NotificationManager.IMPORTANCE_MAX,true);
