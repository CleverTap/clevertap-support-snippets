CleverTap.autoIntegrate()
if let branch = Branch.getInstance() {
branch.setRequestMetadataKey("$clevertap_attribution_id",
value:CleverTap.sharedInstance()?profileGetCleverTapAttributionIdentifier() as
NSObject!);
}
