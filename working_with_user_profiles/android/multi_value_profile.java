// To set a multi-value property
ArrayList<String> stuff = new ArrayList<String>();
stuff.add("bag");
stuff.add("shoes");
cleverTap.profile.setMultiValuesForKey("mystuff", stuff);

// To add an additional value(s) to a multi-value property
cleverTap.profile.addMultiValueForKey("mystuff", "coat");
// or
ArrayList<String> newStuff = new ArrayList<String>();
newStuff.add("socks");
newStuff.add("scarf");
cleverTap.profile.addMultiValuesForKey("mystuff", newStuff);


//To remove a value(s) from a multi-value property
cleverTap.profile.removeMultiValueForKey("mystuff", "bag");
// or
ArrayList<String> oldStuff = new ArrayList<String>();
oldStuff.add("shoes");
oldStuff.add("coat");
cleverTap.profile.removeMultiValuesForKey("mystuff", oldStuff);

//To remove the value of a property (scalar or multi-value)
cleverTap.profile.removeValueForKey("mystuff");