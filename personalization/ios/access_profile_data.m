// To access a scalar-value user profile property:
// If the property is not available, this call will return nil
NSString *customerType = [[CleverTap sharedInstance] profileGet:@"Customer Type"];

// To access a multi-value user profile property:
// If the property is not available, this call will return nil
NSArray *myStuff = [[CleverTap sharedInstance] profileGet:@"myStuff"];