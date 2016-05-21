gapi.client.plus.people.get({
    'userId': 'me'}).execute(function(resp) {
    clevertap.profile.push({"Google Plus":resp});
});

// Recommended scopes for Google Plus are plus.login, plus.me, and E-mail