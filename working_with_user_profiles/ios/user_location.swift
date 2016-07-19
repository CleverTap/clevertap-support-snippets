CleverTap.getLocationWithSuccess({(location: CLLocationCoordinate2D) -> Void in
    // do something with location here, optionally set on CleverTap for use in segmentation etc
    CleverTap.setLocation(location)
}, andError: {(error: String?) -> Void in
    if let e = error {
        print(e)
    }
})
