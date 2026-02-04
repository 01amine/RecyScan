import 'dart:io';

import '../entities/waste_item.dart';
import '../repository/waste_repository.dart';

class EstimateWasteValue {
  final WasteRepository repository;
  EstimateWasteValue(this.repository);

  Future<WasteItem> execute(File image) => repository.scanAndEstimate(image);
}