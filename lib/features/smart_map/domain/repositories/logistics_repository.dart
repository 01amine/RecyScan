import '../entities/location_point.dart';

abstract class LogisticsRepository {
  Future<List<LocationPoint>> getNearbyPoints(double lat, double lng, String itemTag);
  Future<double> calculateDeliveryCost(double distance, double weight, String size);
}