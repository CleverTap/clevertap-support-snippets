// First time the event occurred
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Event.GetFirstTime(string eventName);

// Last time the event occurred
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Event.GetLastTime(string eventName);

//Number of times event occurred previously
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Event.GetOccurences(string eventName);