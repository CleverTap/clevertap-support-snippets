- (void) onConversionDataReceived:(NSDictionary*) installData {
    NSString* status = [installData objectForKey:@"af_status"];
    if([status isEqualToString:@"Non-organic"]) {
        NSString *sourceID = [installData objectForKey:@"agency"];
        NSString *campaign = [installData objectForKey:@"campaign"];
        NSString *medium = [installData objectForKey:@"media_source"];

        [CleverTap pushInstallReferrerSource:sourceID medium:medium campaign:campaign];
    }
}
