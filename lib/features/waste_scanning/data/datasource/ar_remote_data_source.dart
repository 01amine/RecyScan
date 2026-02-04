import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recyscan/core/constants/end_points.dart';
import '../model/ar_model.dart';

class RecyclingRemoteDataSource {
  final http.Client client;
  RecyclingRemoteDataSource({required this.client});

  Future<List<RecyclingCenterModel>> fetchNearbyCenters(
    double lat,
    double lng,
  ) async {
    final response = await client.get(Uri.parse(EndPoints.baseUrl));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((json) => RecyclingCenterModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load locations');
    }
  }
}
