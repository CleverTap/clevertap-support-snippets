// Manually enable Universal link tracking

- (BOOL) application:(UIApplication *)application
    openURL:(NSURL *)url
    sourceApplication:(NSString *)sourceApplication
    annotation:(id)annotation {
      [[CleverTap sharedInstance] handleOpenURL:url sourceApplication:sourceApplication];
      return YES;
}
