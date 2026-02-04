import 'dart:io';

abstract class ScannerEvent {}

class ScanImageEvent extends ScannerEvent {
  final File image;
  ScanImageEvent(this.image);
}