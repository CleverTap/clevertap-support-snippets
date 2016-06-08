NSDictionary *chargeDetails = @{
   @"Amount" : @300,
   @"Payment mode" : @"Credit Card",
   @"Charged ID" : @24052013}; // important to avoid duplicate transactions due to network failure

  NSDictionary *item1 = @{
   @"Category" : @"books",
   @"Book name" : @"The Millionaire next door",
   @"Quantity" : @1};

  NSDictionary *item2 = @{
   @"Category" : @"books",
   @"Book name" : @"Achieving inner zen",
   @"Quantity" : @1};

  NSDictionary *item3 = @{
   @"Category" : @"books",
   @"Book name" : @"Chuck it, let's do it",
   @"Quantity" : @5};

NSArray *items = @[item1, item2, item3];
[[CleverTap sharedInstance] recordChargedEventWithDetails:chargeDetails andItems:items];