// If the details for a given event is not available, this call will return null
EventDetail charged = cleverTap.event.getDetails("Charged");
Date firstTime = new Date(charged.getFirstTime() * 1000l);
Date lastTime = new Date(charged.getLastTime() * 1000l);
int count = charged.getCount();

//Action Event History
// If the user history is not available, this call will return null
Map<String, EventDetail> history = cleverTap.event.getHistory();