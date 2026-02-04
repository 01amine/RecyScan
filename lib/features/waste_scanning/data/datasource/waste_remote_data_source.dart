import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:recyscan/core/constants/end_points.dart';
import '../model/waste_estimation_model.dart';

abstract class WasteRemoteDataSource {
  Future<WasteEstimationModel> uploadImage(File image);
}

class WasteRemoteDataSourceImpl implements WasteRemoteDataSource {
  final http.Client client;
  

  WasteRemoteDataSourceImpl({required this.client});

  @override
  Future<WasteEstimationModel> uploadImage(File image) async {
    try {
      final uri = Uri.parse('${EndPoints.baseUrl}/waste/scan');
      final request = http.MultipartRequest('POST', uri);

      final stream = http.ByteStream(image.openRead());
      final length = await image.length();

      final multipartFile = http.MultipartFile(
        'image',
        stream,
        length,
        filename: image.path.split('/').last,
      );

      request.files.add(multipartFile);

      final streamedResponse = await request.send();

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return WasteEstimationModel.fromJson(data);
      } else {
        throw Exception(
          "Server returned ${response.statusCode}: ${response.body}",
        );
      }
    } catch (e) {
      throw Exception("Failed to upload image: $e");
    }
  }
}
