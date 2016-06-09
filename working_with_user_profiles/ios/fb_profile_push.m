[[[FBSDKGraphRequest alloc] initWithGraphPath:@"me?fields=id,name,email,birthday,gender,education,work"
                                   parameters:nil]
 startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
     if (result) {
         [[CleverTap push] graphUser:result];
     }
 }];
