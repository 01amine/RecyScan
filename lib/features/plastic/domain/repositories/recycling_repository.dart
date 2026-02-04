import '../entities/bin.dart';

abstract class RecyclingRepository {
  Future<List<SmartBin>> getBins();
  Future<int> depositPlastic(String binId, double weight);
}