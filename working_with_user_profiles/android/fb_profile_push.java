GraphRequest.newGraphPathRequest(accessToken,
        "/me?fields=id,name,email,birthday,gender,education,work",
        new GraphRequest.Callback() {
            @Override
            public void onCompleted(GraphResponse response) {
                if (response != null && response.getJSONObject() != null) {
                    cleverTap.profile.pushFacebookUser(response.getJSONObject());
                }
            }
        }).executeAsync();
