Dictionary<string, object> profileUpdate = new Dictionary<string, object>();
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Name, "Jack Montana"); //String
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Identity, "6541182"); // String or number
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Email., "jack@gmail.com"); //Email address of the user
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Phone, 4155551234); //Phone(exclude the country code)
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Gender, "M"); // Can be either M or F
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Employed, "Y"); // Can be either Y or N
profileUpdate.Add(CleverTapSDK.CleverTapProfile.DOB, new DateTime()); // Date of Birth. Set the DateTime object to the appropriate value first
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Age, 28); // Not required if DOB is set
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-email, false); // Disable email notifications
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-push, true); // Enable push notifications
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-sms, false); // Disable SMS notifications
CleverTapApi CleverTapInstance = CleverTapApi.GetInstance();
CleverTapInstance.Profile.Push(profileUpdate);