import '../../domain/entities/recycling_center.dart';

class RecyclingCenterModel extends RecyclingCenter {
  RecyclingCenterModel({
    required super.name,
    required super.latitude,
    required super.longitude,
    required super.distance,
  });

  factory RecyclingCenterModel.fromJson(Map<String, dynamic> json) {
    return RecyclingCenterModel(
      name: json['name'] ?? 'Unknown Center',
      latitude: json['lat'].toDouble(),
      longitude: json['lng'].toDouble(),
      distance: json['distance_km']?.toDouble() ?? 0.0,
    );
  }
}