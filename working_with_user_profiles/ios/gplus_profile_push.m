GPPSignIn *signIn = [GPPSignIn sharedInstance];
  GTLPlusPerson *p = signIn.googlePlusUser;
  [[CleverTap sharedInstance] profilePushGooglePlusUser:p];

// Recommended scopes for Google Plus are kGTLAuthScopePlusMe, kGTLAuthScopePlusLogin, kGTLAuthScopePlusUserinfoEmail, and kGTLAuthScopePlusUserinfoProfile
