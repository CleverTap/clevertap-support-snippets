/**
 * You can register to have your application code be notified of User Profile synchronization updates
 * by implementing the com.clevertap.android.sdk.SyncListener.
 *
 * Your listener will then be called with a JSONObject in the form:
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