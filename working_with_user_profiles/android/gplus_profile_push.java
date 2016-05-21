@Override
public void onConnected(Bundle bundle) {
  Person currentPerson = Plus.PeopleApi.getCurrentPerson(mGoogleApiClient);
  cleverTap.profile.pushGooglePlusPerson(currentPerson);
}

// Recommended scopes for Google Plus are Plus.SCOPE_PLUS_LOGIN, and Plus.SCOPE_PLUS_PROFILE
