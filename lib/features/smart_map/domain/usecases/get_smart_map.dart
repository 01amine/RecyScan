import '../entities/location_point.dart';
import '../repositories/logistics_repository.dart';

class GetSmartMapData {
  final LogisticsRepository repository;
  GetSmartMapData(this.repository);

  Future<List<LocationPoint>> execute(double lat, double lng, String item) {
    return repository.getNearbyPoints(lat, lng, item);
  }
}