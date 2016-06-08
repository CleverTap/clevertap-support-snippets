// An example of recording a User Action called Product Viewed with Properties

NSDictionary *props = @{@"Product name":@"Casio Chronograph Watch",
     @"Category":@"Mens Accessories",
     @"Price":@59.99};
[[CleverTap sharedInstance] recordEvent:@"Product Viewed" withProps:props];
