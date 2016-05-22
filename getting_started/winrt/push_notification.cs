// If you are already registered with WNS, you can push your Notification Uri to CleverTap:
CleverTapInstance.push.SendWNSNotificationUri(string channelUri)

//If you aren’t registered with WNS, you can register in OnLaunched event of App.xaml.
CleverTapInstance.Push.Register();