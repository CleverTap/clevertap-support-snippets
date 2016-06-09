FB.api('/me', {fields: 'id,name,email,birthday,gender,education,work'}, function(userData) {
    clevertap.profile.push({"Facebook": userData});
});
