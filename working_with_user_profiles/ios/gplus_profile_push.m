GPPSignIn *signIn = [GPPSignIn sharedInstance];
  GTLPlusPerson *p = signIn.googlePlusUser;
  [[CleverTap sharedInstance] profilePushGooglePlusUser:p];

// Recommended scopes are kGTLAuthScopePlusMe, kGTLAuthScopePlusLogin, kGTLAuthScopePlusUserinfoEmail, and kGTLAuthScopePlusUserinfoProfile.

