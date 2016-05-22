Dictionary<string, object> profileUpdate = new Dictionary<string, object>();
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Name, "Jack Montana"); //String
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Age, 28);
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Profile.Push(profileUpdate);