// First time the event occurred
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Event.GetFirstTime(string eventName);

//Last time the event occurred
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Event.GetLastTime(string eventName);

//Number of times event occurred previously
CleverTapApi CleverTapConfig = CleverTapApi.GetInstance();
CleverTapConfig.Event.GetOccurences(string eventName);