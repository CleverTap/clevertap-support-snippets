GraphRequest.newMeRequest(accessToken, new GraphRequest.GraphJSONObjectCallback() {
    @Override
    public void onCompleted(JSONObject user, GraphResponse response) {
        if (user != null) {
            cleverTap.profile.pushFacebookUser(user);
        }
    }
}).executeAsync();
