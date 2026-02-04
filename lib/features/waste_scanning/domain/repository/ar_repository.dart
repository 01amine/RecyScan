import '../entities/recycling_center.dart';

abstract class ArRepository {
  Future<List<RecyclingCenter>> getNearbyCenters(double lat, double lng);
}