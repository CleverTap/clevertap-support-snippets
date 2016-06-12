FBSDKGraphRequest(graphPath: "me?fields=id,name,email,birthday,gender,education,work", parameters: nil).startWithCompletionHandler { (conn, result, error) in
    if (error == nil) {
        CleverTap.sharedInstance()?.profilePushGraphUser(result)
    }
}