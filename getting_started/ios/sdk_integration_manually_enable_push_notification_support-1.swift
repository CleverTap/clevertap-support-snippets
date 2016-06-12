func application(application: UIApplication,
                 didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
    CleverTap.sharedInstance()?.setPushToken(deviceToken)
}