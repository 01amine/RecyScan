import '../../domain/entities/location_point.dart';
import '../../domain/repositories/logistics_repository.dart';
import '../models/location_model.dart';

class LogisticsRepositoryImpl implements LogisticsRepository {
  @override
  Future<List<LocationPoint>> getNearbyPoints(
    double lat,
    double lng,
    String itemTag,
  ) async {
    return [
      LocationModel(
        id: '1',
        name: 'EcoRecycle Corp',
        latitude: lat + 0.01,
        longitude: lng + 0.01,
        type: 'company',
        itemsAccepted: ['plastic', 'glass'],
      ),
    ];
  }

  @override
  Future<double> calculateDeliveryCost(
    double distance,
    double weight,
    String size,
  ) async {
    double base = 5.0;
    return base + (distance * 0.5);
  }
}
