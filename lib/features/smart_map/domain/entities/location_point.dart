class LocationPoint {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final String type; // 'company' or 'collection_point'
  final List<String> itemsAccepted;

  LocationPoint({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.type,
    required this.itemsAccepted,
  });
}