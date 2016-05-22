RootFrame = new PhoneApplicationFrame();
CleverTapConfig config = /*Initialize CleverTapConfig by one of the above methods*/
CleverTapApi CleverTapInstance = CleverTapApi.Init(config);
RootFrame.Navigated += root.Navigated;

// You can save the above instance as a static variable in App.xaml.cs, for it to be
// accessed throughout the application.
// Initialized Instance can always be accessed again by:
// CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();

// Note: Improper initializations throw the following exception: CleverTapInitException
