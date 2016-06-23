NSDictionary *profile = @{
    @"Customer Type": @"Silver",
    @"Prefered Language": @"English",
};

[[CleverTap sharedInstance] profilePush:profile];

/**
 * Data types:
 * The value of a property can be of type NSDate, a NSNumber, a NSString, or a BOOL.
 */