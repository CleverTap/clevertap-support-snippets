AppsFlyerLib.registerConversionListener(getApplicationContext(), new AppsFlyerConversionListener() {
    @Override
    public void onInstallConversionDataLoaded(Map<String, String> map) {
        String medium = map.get("media_source");
        String campaign = map.get("campaign");
        String source = map.get("agency");
        cleverTap.pushInstallReferrer(source, medium, campaign);
    }
    @Override
    public void onInstallConversionFailure(String s) {
    }
    @Override
    public void onAppOpenAttribution(Map<String, String> map) {
    }
    @Override
    public void onAttributionFailure(String s) {
    }
});
