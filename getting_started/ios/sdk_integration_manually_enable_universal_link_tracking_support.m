- (BOOL) application:(UIApplication *)application
    openURL:(NSURL *)url
    sourceApplication:(NSString *)sourceApplication
    annotation:(id)annotation {
      [[CleverTap sharedInstance] handleOpenURL:url sourceApplication:sourceApplication];
      return YES;
}

- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary *)options {
    [[CleverTap sharedInstance] handleOpenURL:url sourceApplication:nil];
    return YES;
}

- (void)openURL:(NSURL*)url options:(NSDictionary<NSString *, id> *)options
completionHandler:(void (^ __nullable)(BOOL success))completion {
    [[CleverTap sharedInstance] handleOpenURL:url sourceApplication:nil];
    if (completion) {
        completion(YES);
    }
}
