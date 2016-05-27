- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *) launchOptions {
    ...
    NSString *yourAppToken = @"{ADJUST_APP_TOKEN}";
    NSString *environment = ADJEnvironmentProduction;
    ADJConfig *adjustConfig = [ADJConfig configWithAppToken:yourAppToken
                                                environment:environment];

    [adjustConfig setDelegate:self];
    [Adjust appDidLaunch:adjustConfig];
    ...
    return YES;
}
