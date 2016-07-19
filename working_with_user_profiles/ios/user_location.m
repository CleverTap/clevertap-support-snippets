[CleverTap getLocationWithSuccess:^(CLLocationCoordinate2D location) {
     //do something with location here, optionally set on CleverTap for use in segmentation etc
    [CleverTap setLocation:location];
}
andError:^(NSString *error) {
    NSLog(@"CleverTapLocation Error is %@", error);
}];
