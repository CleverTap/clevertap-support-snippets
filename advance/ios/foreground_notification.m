- (void) userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler {
    
    /**
     Use this method to perform the tasks associated with your app's custom actions. When the user responds to a notification, the system calls this method with the results. You use this method to perform the task associated with that action, if at all. At the end of your implementation, you must call the completionHandler block to let the system know that you are done processing the notification.
     
     You specify your app's notification types and custom actions using UNNotificationCategory and UNNotificationAction objects.
     You create these objects at initialization time and register them with the user notification center. Even if you register custom actions, the action in the response parameter might indicate that the user dismissed the notification without performing any of your actions.
     
     If you do not implement this method, your app never responds to custom actions.
     
     see https://developer.apple.com/reference/usernotifications/unusernotificationcenterdelegate/1649501-usernotificationcenter?language=objc
     **/

    // if you wish CleverTap to record the notification open and fire any deep links contained in the payload
    [[CleverTap sharedInstance]handleNotificationWithData:response.notification.request.content.userInfo openDeepLinksInForeground: YES];
    
    completionHandler();
}
