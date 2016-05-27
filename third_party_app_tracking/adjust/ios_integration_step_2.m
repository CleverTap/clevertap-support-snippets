- (void) adjustAttributionChanged:(ADJAttribution *)attribution {
    NSString *campaign = attribution.campaign;
    NSString *source = attribution.network;
    NSString *medium = attribution.trackerName;

    [CleverTap pushInstallReferrer source:source medium:medium campaign:campaign];
}
