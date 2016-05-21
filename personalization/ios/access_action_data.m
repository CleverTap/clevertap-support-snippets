// If the details for a given event is not available, this call will return nil
CleverTapEventDetail *ed = [[CleverTap sharedInstance] eventGetDetail:@"Charged"];
NSDate *firstTime = [[NSDate alloc] initWithTimeIntervalSince1970:ed.firstTime];
NSDate *lastTime = [[NSDate alloc] initWithTimeIntervalSince1970:ed.lastTime];
int count = ed.count;
Action Event History

// If the user history is not available, this call will return nil
// The dictionary returned is keyed by the event name
// The values are CleverTapEventDetail objects
NSDictionary *history = [[CleverTap sharedInstance] userGetEventHistory];