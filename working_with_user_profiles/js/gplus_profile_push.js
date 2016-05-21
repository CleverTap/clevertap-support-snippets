gapi.client.plus.people.get({
    'userId': 'me'}).execute(function(resp) {
    clevertap.profile.push({"Google Plus":resp});
});

// Recommended scopes are plus.login, plus.me, and E-mail
