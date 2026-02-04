import '../entities/recycling_center.dart';
import '../repository/ar_repository.dart';

class GetNearbyCenters {
  final ArRepository repository;

  GetNearbyCenters(this.repository);

  Future<List<RecyclingCenter>> call(double lat, double lng) {
    return repository.getNearbyCenters(lat, lng);
  }
}