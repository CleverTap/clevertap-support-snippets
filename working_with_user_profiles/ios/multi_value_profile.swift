// To set a multi-value property
CleverTap.sharedInstance()?.profileSetMultiValues(["bag", "shoes"], forKey: "myStuff")

// To add an additional value(s) to a multi-value property
CleverTap.sharedInstance()?.profileAddMultiValue("coat", forKey: "myStuff")
// or
CleverTap.sharedInstance()?.profileAddMultiValues(["socks", "scarf"], forKey: "myStuff")

//To remove a value(s) from a multi-value property
CleverTap.sharedInstance()?.profileRemoveMultiValue("bag", forKey: "myStuff")
CleverTap.sharedInstance()?.profileRemoveMultiValues(["shoes", "coat"], forKey: "myStuff")

//To remove the value of a property (scalar or multi-value)
CleverTap.sharedInstance()?.profileRemoveValueForKey("myStuff")