func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation,
                     fromLocation oldLocation: CLLocation) {
    CleverTap.setLocation(newLocation.coordinate)
}