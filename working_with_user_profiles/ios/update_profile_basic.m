// each of the below mentioned fields are optional
// if set, these populate demographic information in the Dashboard
NSDateComponents *dob = [[NSDateComponents alloc] init];
dob.day = 24;
dob.month = 5;
dob.year = 1992;
NSDate *d = [[NSCalendar currentCalendar] dateFromComponents:dob];
NSDictionary *profile = @{
    @"Name": @"Jack Montana",               // String
    @"Identity": @61026032,                 // String or number
    @"Email": @"jack@gmail.com",            // Email address of the user
    @"Phone": @"+14155551234",              // Phone (with the country code, starting with +)
    @"Gender": @"M",                        // Can be either M or F
    @"Employed": @"Y",                      // Can be either Y or N
    @"Education": @"Graduate",              // Can be either Graduate, College or School
    @"Married": @"Y",                       // Can be either Y or N
    @"DOB": d,                              // Date of Birth. An NSDate object
    @"Age": @28,                            // Not required if DOB is set
    @"Photo": @"www.foobar.com/image.jpeg", // URL to the Image

// optional fields. controls whether the user will be sent email, push etc.
    @"MSG-email": @NO,                      // Disable email notifications
    @"MSG-push": @YES,                      // Enable push notifications
    @"MSG-sms": @NO                         // Disable SMS notifications
};

[[CleverTap sharedInstance] profilePush:profile];
