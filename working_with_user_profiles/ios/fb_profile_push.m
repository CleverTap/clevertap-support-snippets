[[[FBSDKGraphRequest alloc] initWithGraphPath:@"me?fields=id,name,email,birthday,gender,education,work"
                                   parameters:nil]
 startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
     if (!error) {
         [[CleverTap push] graphUser:result];
     }
 }];
