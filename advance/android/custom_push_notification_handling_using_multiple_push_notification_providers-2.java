<receiver
        android:name=“com.mypackage.path.to.MyCustomGcmBroadcastReceiver"
        android:permission="com.google.android.c2dm.permission.SEND">
    <intent-filter>
        <action android:name="com.google.android.c2dm.intent.RECEIVE"/>
        <action android:name="com.google.android.c2dm.intent.REGISTRATION"/>

        <category android:name="com.mypackage"/>
    </intent-filter>
</receiver>
