import '../../domain/entities/location_point.dart';

class LocationModel extends LocationPoint {
  LocationModel({
    required super.id,
    required super.name,
    required super.latitude,
    required super.longitude,
    required super.type,
    required super.itemsAccepted,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: json['id'],
      name: json['name'],
      latitude: json['lat'],
      longitude: json['lng'],
      type: json['type'],
      itemsAccepted: List<String>.from(json['items_accepted']),
    );
  }
}