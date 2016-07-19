// each of the below mentioned fields are optional with the exception of one of Identity, Email, FBID or GPID
HashMap<String, Object> profileUpdate = new HashMap<String, Object>();
profileUpdate.put("Name", "Jack Montana");    // String
profileUpdate.put("Identity", 61026032);      // String or number
profileUpdate.put("Email", "jack@gmail.com"); // Email address of the user
profileUpdate.put("Phone", 4155551234);       // Phone (without the country code)
profileUpdate.put("Gender", "M");             // Can be either M or F
profileUpdate.put("Employed", "Y");           // Can be either Y or N
profileUpdate.put("Education", "Graduate");   // Can be either Graduate, College or School
profileUpdate.put("Married", "Y");            // Can be either Y or N
profileUpdate.put("DOB", new Date());         // Date of Birth. Set the Date object to the appropriate value first
profileUpdate.put("Age", 28);                 // Not required if DOB is set

// optional fields. controls whether the user will be sent email, push etc.
profileUpdate.put("MSG-email", false);        // Disable email notifications
profileUpdate.put("MSG-push", true);          // Enable push notifications
profileUpdate.put("MSG-sms", false);          // Disable SMS notifications

CleverTapAPI.getInstance(getApplicationContext()).onUserLogin(profileUpdate);
