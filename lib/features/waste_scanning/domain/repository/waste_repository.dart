import 'dart:io';

import '../entities/waste_item.dart';

abstract class WasteRepository {
  Future<WasteItem> scanAndEstimate(File image);
}