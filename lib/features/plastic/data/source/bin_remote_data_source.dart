import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/smart_bin_model.dart';

class BinRemoteDataSource {
  final http.Client client;
  BinRemoteDataSource(this.client);

  Future<List<SmartBinModel>> fetchBins() async {
    final response = await client.get(Uri.parse('https://api.recycle.com/bins'));
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => SmartBinModel.fromJson(e)).toList();
    }
    throw Exception("Sensor data unavailable");
  }

  Future<int> postDeposit(String binId, double weight) async {
    // Call backend to verify sensor triggered and update user points
    final response = await client.post(
      Uri.parse('https://api.recycle.com/deposit'),
      body: {'bin_id': binId, 'weight': weight.toString()},
    );
    return json.decode(response.body)['points_earned'];
  }
}