// Hook up the Application_Closing function inside App.xaml.cs:
private void Application_Closing(object sender, ClosingEventArgs e)
{
 CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
 CleverTapInstance.RaiseAppClosed();
}

// Hook up the Application_Deactivated e function inside App.xaml.cs:
private void Application_Deactivated(object sender, DeactivatedEventArgs e)
{
  CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
  CleverTapInstance.RaiseAppSuspended();
}

// Hook up the Application_Activated event inside App.xaml.cs:
private void Application_Activated(object sender, ActivatedEventArgs e)
{
  CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
  CleverTapInstance.RaiseAppResumed();
}