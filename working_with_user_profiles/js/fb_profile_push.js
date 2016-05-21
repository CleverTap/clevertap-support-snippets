FB.api('/me', function(userData) {
   clevertap.profile.push({"Facebook": userData});
});

/**
 * Adding a call for additional permissions, for example, email, would be done like this:
 * FB.api('/me', {fields: 'email'}, function(userData) {
 *  clevertap.profile.push({"Facebook": userData});
 * });
 */
 


