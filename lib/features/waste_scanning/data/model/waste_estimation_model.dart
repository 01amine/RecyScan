import '../../domain/entities/waste_item.dart';

class WasteEstimationModel extends WasteItem {
  WasteEstimationModel({
    required super.label,
    required super.condition,
    required super.estimatedValue,
    required super.wasteType,
  });

  factory WasteEstimationModel.fromJson(Map<String, dynamic> json) {
    return WasteEstimationModel(
      label: json['detected_object'],
      condition: json['condition_score'],
      estimatedValue: json['market_value'].toDouble(),
      wasteType: json['category'],
    );
  }
}