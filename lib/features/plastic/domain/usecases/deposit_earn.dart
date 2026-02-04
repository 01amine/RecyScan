import '../repositories/recycling_repository.dart';

class DepositPlasticAndEarn {
  final RecyclingRepository repository;

  DepositPlasticAndEarn(this.repository);

  Future<int> execute(String binId, double weight) async {

    if (weight <= 0) throw Exception("No weight detected by bin sensor.");
    
    return await repository.depositPlastic(binId, weight);
  }
}