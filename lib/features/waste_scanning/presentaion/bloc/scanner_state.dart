import '../../domain/entities/waste_item.dart';

abstract class ScannerState {}

class ScannerInitial extends ScannerState {}
class ScannerLoading extends ScannerState {}
class ScannerSuccess extends ScannerState {
  final WasteItem wasteItem;
  ScannerSuccess(this.wasteItem);
}
class ScannerError extends ScannerState {
  final String message;
  ScannerError(this.message);
}