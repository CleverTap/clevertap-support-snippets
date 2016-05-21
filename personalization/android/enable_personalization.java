// Call the method enablePersonalization() on the CleverTapAPI instance (preferably in the onCreate() of your main activity):
public void onCreate(Bundle savedInstanceState) {
  CleverTapAPI cleverTap = CleverTapAPI.getInstance(getApplicationContext());
  cleverTap.enablePersonalization();
}