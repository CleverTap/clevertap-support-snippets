// Manually providing Location information to CleverTap

- (void)locationManager:(CLLocationManager ​*)manager didUpdateToLocation:(CLLocation *​)newLocation fromLocation:(CLLocation *)oldLocation {
   [CleverTap setLocation: newLocation.coordinate];
}
