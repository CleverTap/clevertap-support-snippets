func application(application: UIApplication, openURL url: NSURL,
                 sourceApplication: String?, annotation: AnyObject) -> Bool {
    CleverTap.sharedInstance()?.handleOpenURL(url, sourceApplication: sourceApplication)
    return true
}

// Swift 3
func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
   CleverTap.sharedInstance()?.handleOpen(url, sourceApplication: nil)
   return true
}

func open(_ url: URL, options: [String : Any] = [:],
                   completionHandler completion: ((Bool) -> Swift.Void)? = nil) {
	CleverTap.sharedInstance()?.handleOpen(url, sourceApplication: nil)
	completion?(false)
}
