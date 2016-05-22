CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
Dictionary<string, object> evtProps = new Dictionary<string, object>();
evtProps.Add("Product name", "Casio Chronograph Watch");
evtProps.Add("Category", "Mens Accessories");
evtProps.Add("Price", 59.99);
CleverTapInstance.Event.Push("Product Viewed", evtProps);