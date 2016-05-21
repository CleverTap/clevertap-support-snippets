[FBRequestConnection startWithGraphPath:@"me?
    fields=id,name,email,birthday, gender,education,work"
    completionHandler:^(FBRequestConnection *connection, id
    result, NSError *error) {
      if (!error) {
        [[CleverTap sharedInstance] profilePushGraphUser:result];
      }
    }];
