application.registerActivityLifecycleCallbacks(
        new android.app.Application.ActivityLifecycleCallbacks() {
        
            @Override
            public void onActivityCreated(Activity activity, Bundle bundle) {
                CleverTapAPI.setAppForeground(true);
                try {
                    wr.event.pushNotificationEvent(activity.getIntent().getExtras());
                } catch (Throwable t) {
                    // Ignore
                }
                try {
                    Intent intent = activity.getIntent();
                    Uri data = intent.getData();
                    wr.pushDeepLink(data);
                } catch (Throwable t) {
                    // Ignore
                }
            }
            
            @Override
            public void onActivityStarted(Activity activity) {
            }
            
            @Override
            public void onActivityResumed(Activity activity) {
                try {
                    wr.activityResumed(activity);
                } catch (Throwable t) {
                    // Ignore
                }
            }
            
            @Override
            public void onActivityPaused(Activity activity) {
                try {
                    wr.activityPaused(activity);
                } catch (Throwable t) {
                    // Ignore
                }
            }
            
            @Override
            public void onActivityStopped(Activity activity) {
            }
            
            @Override
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }
            
            @Override
            public void onActivityDestroyed(Activity activity) {
            }
        }
);
