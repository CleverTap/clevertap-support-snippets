// event with properties
HashMap<String, Object> prodViewedAction = new HashMap<String, Object>();
prodViewedAction.put("Product Name", "Casio Chronograph Watch");
prodViewedAction.put("Category", "Mens Accessories");
prodViewedAction.put("Price", 59.99);
prodViewedAction.put("Date", '$D_1476084698');

cleverTap.event.push("Product viewed", prodViewedAction);

/**
 * Data types
 * The value of a property can be of type Date (java.util.Date), an Integer, a Long, a Double,
 * a Float, a Character, a String, or a Boolean.
 *
 * Date object
 * When a property value is of type Date, the date and time are both recorded to the second.
 * This can be later used for targeting scenarios.
 * For e.g. if you are recording the time of the flight as an event property,
 * you can send a message to the user just before their flight takes off.
 */
