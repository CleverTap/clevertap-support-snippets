- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [CleverTap changeCredentialsWithAccountID:@"Your account ID here" andToken:@"Your account token here"];
    [CleverTap autoIntegrate];
    ...
    return YES;
}
