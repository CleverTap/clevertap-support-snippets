CleverTapConfig config = new CleverTapConfig("Your CleverTap Account ID","Your CleverTap Account Token");

/* Enable / Disable Push-Toast Notifications from WizRocket [Default-true]*/
config.RegisterForToastNotifications = true;

/* Enable / Disable InApp Notifications from WizRocket [Default-true]*/
config.EnableInAppNotifications = true;

/* If Push Enabled, provide MPNS Channel Name [Default-WizRocket]. Channel Name not required for WNS */
config.ChannelName = "WizRocket";

/* If Authenticated Push Enabled, provide Service Name, Mandatory for Authenticated push, Do not initalize for unauthenticated push.
  Service Name not required for WNS*/
config.ServiceName = "ServiceName";

/* Enable / Disable personalization API [Default-false]*/
config.EnablePersonalization= true;

/* Enable / Disable sending Geo Location to CleverTap, enable ID_CAP_LOCATION Capability in WMAppManifest.cml [Default-true]*/
config.EnableGeoLocation = true;

/*Enable / Disable Logging from CleverTap [Default-false]*/
config.EnableLogging = false;
