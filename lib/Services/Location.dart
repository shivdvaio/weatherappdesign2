import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  void getCurrentlocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
