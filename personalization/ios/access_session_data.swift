// Returns the time elapsed in seconds
let timeElapsed = CleverTap.sharedInstance()?.sessionGetTimeElapsed()

// Total App Opens
let totalVisits = CleverTap.sharedInstance()?.userGetTotalVisits()

// View Controller Counts
let screenCount = CleverTap.sharedInstance()?.userGetScreenCount()

// Last App Open
// If this is the user's first visit, the call below will return -1
let lastTimeAppLaunched = NSDate(timeIntervalSince1970: (CleverTap.sharedInstance()?.userGetPreviousVisitTime())!)