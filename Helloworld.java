HashMap<String, Object> prodViewedAction = new HashMap<String, Object>();
  prodViewedAction.put("Product Name", "Casio Chronograph Watch");
  prodViewedAction.put("Category", "Mens Accessories");
  prodViewedAction.put("Price", 59.99);
  cleverTap.event.push("Product viewed", prodViewedAction);
