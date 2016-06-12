func application(application: UIApplication, openURL url: NSURL,
                 sourceApplication: String?, annotation: AnyObject) -> Bool {
    CleverTap.sharedInstance()?.handleOpenURL(url, sourceApplication: sourceApplication)
    return true
}