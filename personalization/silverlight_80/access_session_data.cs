// Time elapsed in current session
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Session.GetTimeElapsed();

// Total number of times user has opened the app
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Session.GetTotalVisits();

// Number of pages browsed in the current session
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Session.GetPageCount();

// Time of previous visit
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Session.GetPreviousVisitTime();

