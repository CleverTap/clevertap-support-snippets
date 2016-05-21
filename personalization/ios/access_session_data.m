// Returns the time elapsed in seconds
int timeElapsed = [[CleverTap sharedInstance] sessionGetTimeElapsed];

// Total App Opens
int totalVisits = [[CleverTap sharedInstance] userGetTotalVisits];

// View Controller Counts
int screenCount = [[CleverTap sharedInstance] userGetScreenCount];

// Last App Open
// If this is the user's first visit, the call below will return -1
NSDate *lastTimeAppLaunched = [[NSDate alloc] initWithTimeIntervalSince1970:[[CleverTap sharedInstance] userGetPreviousVisitTime]];
