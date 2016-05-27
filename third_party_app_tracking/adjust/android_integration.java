String appToken = "{ADJUST_APP_TOKEN}";
String environment = AdjustConfig.ENVIRONMENT_PRODUCTION;
AdjustConfig config = new AdjustConfig(this, appToken, environment);

config.setOnAttributionChangedListener(new OnAttributionChangedListener() {
    @Override
    public void onAttributionChanged(AdjustAttribution attribution) {
        String source = attribution.network;
        String medium = attribution.trackerName;
        String campaign = attribution.campaign;
        cleverTap.pushInstallReferrer(source, medium, campaign);
    }
});
Adjust.onCreate(config);
