// each of the below mentioned fields are optional 
// with the exception of one of Identity, Email, FBID or GPID
NSDictionary *profile = @{
    @"Name": @"Jack Montana",       // String
    @"Identity": @61026032,         // String or number
    @"Email": @"jack@gmail.com",    // Email address of the user
    @"Phone": @"+14155551234",      // Phone (with the country code, starting with +)
    @"Gender": @"M",                // Can be either M or F
    @"Employed": @"Y",              // Can be either Y or N
    @"Education": @"Graduate",      // Can be either Graduate, College or School
    @"Married": @"Y",               // Can be either Y or N
    @"Age": @28,                    

// optional fields. controls whether the user will be sent email, push etc.
    @"MSG-email": @NO,              // Disable email notifications
    @"MSG-push": @YES,              // Enable push notifications
    @"MSG-sms": @NO                 // Disable SMS notifications
};

[[CleverTap sharedInstance] onUserLogin:profile];
