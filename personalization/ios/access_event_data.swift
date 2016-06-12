// If the details for a given event is not available, this call will return nil
let ed = CleverTap.sharedInstance()?.eventGetDetail("Charged")
let firstTime = NSDate(timeIntervalSince1970: (ed?.firstTime)!)
let lastTime = NSDate(timeIntervalSince1970: (ed?.lastTime)!)
let count = ed?.count
Action Event History

// If the user history is not available, this call will return nil
// The dictionary returned is keyed by the event name
// The values are CleverTapEventDetail objects
let history = CleverTap.sharedInstance()?.userGetEventHistory()