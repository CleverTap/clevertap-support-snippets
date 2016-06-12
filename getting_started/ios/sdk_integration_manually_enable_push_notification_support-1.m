- (void) application:(UIApplication *)application
    didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
      [[CleverTap sharedInstance] setPushToken:deviceToken];
}
