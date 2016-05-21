FB.api('/me', function(userData) {
   clevertap.profile.push({"Facebook": userData});
});

/**
 * A call with additional permissions, for example - email, would look like this:
 * FB.api('/me', {fields: 'email'}, function(userData) {
 *  clevertap.profile.push({"Facebook": userData});
 * });
 */
