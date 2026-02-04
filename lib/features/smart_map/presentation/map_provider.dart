import 'package:flutter/material.dart';
import '../domain/entities/location_point.dart';
import '../domain/usecases/get_smart_map.dart';

class MapProvider extends ChangeNotifier {
  final GetSmartMapData getSmartMapData;
  MapProvider(this.getSmartMapData);

  List<LocationPoint> points = [];
  bool isLoading = false;

  void loadMapPoints(double lat, double lng, String item) async {
    isLoading = true;
    notifyListeners();
    points = await getSmartMapData.execute(lat, lng, item);
    isLoading = false;
    notifyListeners();
  }
}