@Override
public void onConnected(Bundle bundle) {
  Person currentPerson = Plus.PeopleApi.getCurrentPerson(mGoogleApiClient);
  cleverTap.profile.pushGooglePlusPerson(currentPerson);
}
