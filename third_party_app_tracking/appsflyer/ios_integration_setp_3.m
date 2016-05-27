- (void) applicationDidBecomeActive:(UIApplication *)application {
    ...
    [[AppsFlyerTracker sharedTracker] trackAppLaunch];
    [AppsFlyerTracker sharedTracker].delegate = self;
}
