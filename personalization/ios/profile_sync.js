/**
 * The SDK leverages the NSNotification broadcast mechanism to notify your application when these changes occur.
 * You can receive these change updates by observing the CleverTapProfileDidChangeNotification.
 * Change data will be returned in the userInfo property of the NSNotification, and is of the form:
 */
{
    "profile": {
        "<property1>": {
            "oldValue": < value > ,
            "newValue": < value >
        },
        ...
    },
    "events": {
        "< eventName> ": {
            "count": {
                "oldValue": < old count > ,
                "newValue": < new count >
            },
            "firstTime": {
                "oldValue": < old first time event occurred > ,
                "newValue": < new first time event occurred >
            },
            "lastTime": {
                "oldValue": < old last time event occurred > ,
                "newValue": < new last time event occurred >
            },
        }
    }
}

/**
 * The CleverTapSyncDelegate protocol provides an additional/alternative method for notifying
 * your application (the adopting delegate) about synchronization-related changes to the User Profile.
 */