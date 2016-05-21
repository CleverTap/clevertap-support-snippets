GPPSignIn *signIn = [GPPSignIn sharedInstance];
  GTLPlusPerson *p = signIn.googlePlusUser;
  [[CleverTap sharedInstance] profilePushGooglePlusUser:p];
