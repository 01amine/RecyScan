import '../../domain/entities/recycling_center.dart';
import '../../domain/repository/ar_repository.dart';
import '../datasource/ar_remote_data_source.dart';

class ArRepositoryImpl implements ArRepository {
  final RecyclingRemoteDataSource remoteDataSource;

  ArRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<RecyclingCenter>> getNearbyCenters(double lat, double lng) async {
    try {
      return await remoteDataSource.fetchNearbyCenters(lat, lng);
    } catch (e) {
      throw Exception("Could not fetch recycling locations: $e");
    }
  }
}
