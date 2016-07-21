//requires Location Permission in AndroidManifest e.g. "android.permission.ACCESS_COARSE_LOCATION"
CleverTapAPI clevertap = CleverTapAPI.getInstance(getApplicationContext());
Location location = clevertap.getLocation();
// do something with location, optionally set on CleverTap for use in segmentation etc
clevertap.setLocation(location);
