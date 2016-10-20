// event with properties
let props = [
    "Product name": "Casio Chronograph Watch",
    "Category": "Mens Accessories",
    "Price": 59.99,
    "Date": NSDate()
]

CleverTap.sharedInstance()?.recordEvent("Product viewed", withProps: props)

/**
 * Data types:
 * The value of a property can be of type NSDate, a Number, a String, or a Bool.
 *
 * NSDate object:
 * When a property value is of type NSDate, the date and time are both recorded to the second.
 * This can be later used for targeting scenarios.
 * For e.g. if you are recording the time of the flight as an event property,
 * you can send a message to the user just before their flight takes off.
 */
