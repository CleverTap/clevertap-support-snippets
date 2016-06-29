func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject:AnyObject]?) -> Bool {
    CleverTap.changeCredentialsWithAccountID("Your account ID here", andToken: "Your account token here")
    CleverTap.autoIntegrate()
    ...
    return true
}
