NSDictionary *profile = @{
    @"Name" : @"Jack Montana",
    @"Age" : @28
};
[[CleverTap sharedInstance] profilePush:profile];
