class LocalData {
  static String lat = '51.1657';
  static String lon = '10.4515';

  static void setLatLon(String lat, String lon) {
    LocalData.lat = lat;
    LocalData.lon = lon;
    print('Successfully set current location lat lon...');
  }
}
