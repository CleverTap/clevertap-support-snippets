// Returns the time elapsed in seconds
int timeElapsed = cleverTap.session.getTimeElapsed();

// Total App Opens
int totalVisits = cleverTap.session.getTotalVisits();

// Activity View Counts
int screenCount = cleverTap.session.getScreenCount();

// Last App Open
// If this is the user's first visit, the call below will return -1
Date lastVisit = new Date(cleverTap.session.getPreviousVisitTime() * 1000l);