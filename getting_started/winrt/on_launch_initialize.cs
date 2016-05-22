protected override void OnLaunched(LaunchActivatedEventArgs e)
{
  CleverTapApi CleverTapInstance = CleverTapApi.Init(CleverTapAccountId,
  CleverTapToken, e.Arguments); // e.Arguments is needed to record UTM parameters from which the application was launched.
}

// You can save the above instance as a static variable in App.xaml.cs, for it to be
// accessed throughout the application.
// Initialized Instance can always be accessed again by:
// CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();

// Note: Improper initializations throw the following exception: CleverTapInitException