// To access a scalar-value user profile property:
// If the property is not available, this call will return nil
let customerType = CleverTap.sharedInstance()?.profileGet("Customer Type")

// To access a multi-value user profile property:
// If the property is not available, this call will return nil
let myStuff = (CleverTap.sharedInstance()?.profileGet("myStuff")) as! Array<AnyObject>
