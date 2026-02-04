import '../../domain/entities/bin.dart';

class SmartBinModel extends SmartBin {
  SmartBinModel({
    required super.id,
    required super.lat,
    required super.lng,
    required super.fillLevel,
  });

  factory SmartBinModel.fromJson(Map<String, dynamic> json) {
    return SmartBinModel(
      id: json['bin_id'],
      lat: json['latitude'],
      lng: json['longitude'],
      fillLevel: (json['fill_status'] as num).toDouble(),
    );
  }
}
