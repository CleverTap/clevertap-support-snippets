// each of the below mentioned fields are optional
// if set, these populate demographic information in the Dashboard
Dictionary<string, object> profileUpdate = new Dictionary<string, object>();
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Name, "Jack Montana");                  // String
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Identity, 61026032);                    // String or number
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Email., "jack@gmail.com");              // Email address of the user
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Phone, 4155551234);                     // Phone (without the country code)
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Gender, "M");                           // Can be either M or F
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Employed, "Y");                         // Can be either Y or N
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Education, "Graduate");                 // Can be either School, College or Graduate
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Married, "Y");                          // Can be either Y or N
profileUpdate.Add(CleverTapSDK.CleverTapProfile.DOB, new DateTime());                   // Date of Birth. Set the DateTime object to the appropriate value first
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Age, 28);                               // Not required if DOB is set
profileUpdate.Add(CleverTapSDK.CleverTapProfile.Photo, "www.foodbar.com/image.jpeg");   // URL to the Image

// optional fields. controls whether the user will be sent email, push etc.
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-email, false);                      // Disable email notifications
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-push, true);                        // Enable push notifications
profileUpdate.Add(CleverTapSDK.CleverTapProfile.MSG-sms, false);                        // Disable SMS notifications
CleverTapInstance.Profile.Push(profileUpdate);
