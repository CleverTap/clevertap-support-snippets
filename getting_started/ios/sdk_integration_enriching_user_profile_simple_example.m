// Simple user profile enrichment example - adding name and an age to the user’s profile:

NSDictionary *profile = @{
    @"Name" : @"Jack Montana",
    @"Age" : @28
};
[[CleverTap sharedInstance] profilePush:profile];
