NSDictionary *props = @{@"Product name":@"Casio Chronograph Watch",
  @"Category":@"Mens Accessories",
  @"Price":@59.99,
[[CleverTap sharedInstance] recordEvent:@"Product viewed" withProps:props];