// Note: The call ensures that the Stayed event gets recorded.
protected override void OnNavigatedTo(NavigationEventArgs e)
{
  base.OnNavigatedTo(e);
  CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
  CleverTapInstance.Navigated();
}