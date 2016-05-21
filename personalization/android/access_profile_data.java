// To access a scalar-value user profile property:
// If the property is not available, this call will return null
String customerType = (String) cleverTap.profile.getProperty("Customer Type");

// To access a multi-value user profile property:
// If the property is not available, this call will return null
// To support multi-value user profile properties, cleverTap.profile.getProperty(key) returns an Object.
JSONArray myStuff = (JSONArray ) clevertap.profile.getProperty("myStuff");
