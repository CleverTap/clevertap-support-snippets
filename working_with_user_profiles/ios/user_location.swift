/*
Get the device location if available. Will prompt the user location permissions dialog.
 
Please be sure to include the NSLocationWhenInUseUsageDescription key in your Info.plist.
See https://developer.apple.com/library/ios/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW26

Uses desired accuracy of kCLLocationAccuracyHundredMeters.

If you need background location updates or finer accuracy please implement your own location handling.  
 Please see https://developer.apple.com/library/ios/documentation/CoreLocation/Reference/CLLocationManager_Class/index.html for more info.
 
Optional.  You can use location to pass it to CleverTap via the setLocation API
for, among other things, more fine-grained geo-targeting and segmentation purposes.
*/

CleverTap.getLocationWithSuccess({(location: CLLocationCoordinate2D) -> Void in
    // do something with location here, optionally set on CleverTap for use in segmentation etc
    CleverTap.setLocation(location)
}, andError: {(error: String?) -> Void in
    if let e = error {
        print(e)
    }
})
