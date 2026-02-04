abstract class ArNavigationEvent {}

class LoadNearbyCentersEvent extends ArNavigationEvent {
  final double lat;
  final double lng;
  LoadNearbyCentersEvent(this.lat, this.lng);
}