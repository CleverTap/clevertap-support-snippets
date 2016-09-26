<service
    android:name="com.your.package.MyFcmMessageListenerService">
    <intent-filter>
        <action android:name="com.google.firebase.MESSAGING_EVENT"/>
    </intent-filter>
</service>
