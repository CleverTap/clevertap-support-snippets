// Add the listener only inside Page_Loaded event and not any other event.
private void ProfilePage_Loaded(object sender, RoutedEventArgs e
{
  CleverTapInstance.Push.InAppListener();
}