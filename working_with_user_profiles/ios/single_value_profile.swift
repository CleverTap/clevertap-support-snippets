let profile: Dictionary<String, AnyObject> = [
    "Customer Type": "Silver",
    "Prefered Language": "English"
]

CleverTap.sharedInstance()?.profilePush(profile)

/**
 * Data types:
 * The value of a property can be of type NSDate, a Number, a String, or a Bool.
 */