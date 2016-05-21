Dictionary<string, object> chargeDetails = new Dictionary<string,object>();
chargeDetails.Add("Amount", 300);
chargeDetails.Add("Currency", "USD");
chargeDetails.Add("Payment mode", "Credit card");
chargeDetails.Add("Charged ID", 24052013);

Dictionary<string, object> item1 = new Dictionary<string, object>();
item1.Add("Category", "books");
item1.Add("Book name","The Millionaire next door");
item1.Add("Quantity", 1);

Dictionary<string, object> item2 = new Dictionary<string, object>();
item2.Add("Category", "books");
item2.Add("Book name","Achieving inner zen");
item2.Add("Quantity", 1);

Dictionary<string, object> item3 = new Dictionary<string, object>();
item3.Add("Category", "books");
item3.Add("Book name","Chuck it, let's do it");
item3.Add("Quantity", 5);

List<Dictionary<string, object>> items = new List<Dictionary<string, object>>();
items.add(item1);
items.add(item2);
items.add(item3);
CleverTapInstance.Event.PushCharged(chargeDetails, items);