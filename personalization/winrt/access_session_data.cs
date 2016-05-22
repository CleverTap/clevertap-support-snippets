// Number of pages browsed in the current session
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Session.GetPageCount();

// Time of previous visit
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Session.GetPreviousVisitTime();

// Time elapsed in current session
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Session.GetTimeElapsed();

//Total number of times user has opened the app
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Session.GetTotalVisits();