func application(application: UIApplication, didReceiveRemoteNotification
    userInfo: [NSObject : AnyObject]) {
    CleverTap.sharedInstance()?.handleNotificationWithData(userInfo)
}

func application(application: UIApplication, didReceiveLocalNotification
    notification: UILocalNotification) {
    CleverTap.sharedInstance()?.handleNotificationWithData(notification)
}

// As of iOS 8 and above
func application(application: UIApplication, handleActionWithIdentifier identifier: String?,
                 forLocalNotification notification: UILocalNotification, completionHandler: () -> Void) {
    CleverTap.sharedInstance()?.handleNotificationWithData(notification)
    completionHandler()
}

func application(application: UIApplication, handleActionWithIdentifier identifier: String?,
                 forRemoteNotification userInfo: [NSObject : AnyObject], completionHandler: () -> Void) {
    CleverTap.sharedInstance()?.handleNotificationWithData(userInfo)
    completionHandler()
}

func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], 
fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
	CleverTap.sharedInstance()?.handleNotification(withData: userInfo)
    completionHandler(.noData)
}
