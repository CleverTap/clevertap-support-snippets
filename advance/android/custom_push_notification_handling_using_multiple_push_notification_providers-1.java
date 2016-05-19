
public class MyCustomGcmBroadcastReceiver extends WakefulBroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        CleverTapAPI.createNotification(context, intent.getExtras());
        new com.parse.GcmBroadcastReceiver().onReceive(context, intent);
    }
}
