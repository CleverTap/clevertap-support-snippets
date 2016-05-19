// Manually Enable Push Notification support

- (void) application:(UIApplication *)application
    didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
      [[CleverTap sharedInstance] setPushToken:deviceToken];
  }

// Include a call to handleNotificationWithData: when your app delegate is sent the messages

application:didReceiveRemoteNotification:
application:didReceiveLocalNotification:
application:handleActionWithIdentifier:forRemoteNotification:completionHandler:
application:handleActionWithIdentifier:forLocalNotification:completionHandler:

// like so:

- (void) application:(UIApplication *)application
    didReceiveRemoteNotification:(NSDictionary *)userInfo {
      [[CleverTap sharedInstance] handleNotificationWithData:userInfo];
    }
- (void) application:(UIApplication *)application
    didReceiveLocalNotification:(UILocalNotification *)notification {
      [[CleverTap sharedInstance] handleNotificationWithData:notification];
    }
    
// As of iOS 8 and above
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier
    forLocalNotification:(UILocalNotification *)notification completionHandler:(void (^)())completionHandler {
        [[CleverTap sharedInstance] handleNotificationWithData:notification];
        if (completionHandler) completionHandler();
    }
    
- (void) application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier
    forRemoteNotification:(NSDictionary *)userInfo completionHandler:(void (^)())completionHandler {
        [[CleverTap sharedInstance] handleNotificationWithData:userInfo];
        if (completionHandler) completionHandler();
}
