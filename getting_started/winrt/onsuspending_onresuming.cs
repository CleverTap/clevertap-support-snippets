// Hook up the RaiseAppSuspended in your OnSuspending function inside App.xaml.cs:
private void OnSuspending(object sender, SuspendingEventArgs e)
{
  CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
  CleverTapInstance.RaiseAppSuspended();
}

// Hook up RaiseAppResumed in your OnResuming function in the App.xaml.cs:
private void OnResuming(object sender, object e)
{
  CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
  CleverTapInstance.RaiseAppResumed();
}