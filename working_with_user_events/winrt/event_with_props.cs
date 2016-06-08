CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
Dictionary<string, object> evtProps = new Dictionary<string, object>();
evtProps.Add("Product name", "Casio Chronograph Watch");
evtProps.Add("Category", "Mens Accessories");
evtProps.Add("Price", 59.99);
CleverTapInstance.Event.Push("Product Viewed", evtProps);

/**
 * Data types
 * The value of a property can be either a DateTime, an Integer, a Long, a Double,
 * a Float, a Character, a String, or a Boolean.
 *
 * Date object
 * When you pass the value of the property as DateTime, the date and time are both recorded.
 * This can be later used for targeting scenarios.
 * For e.g. if you are recording the time of the flight as an event property,
 * you can send a message to the user just before their flight takes off.
 */