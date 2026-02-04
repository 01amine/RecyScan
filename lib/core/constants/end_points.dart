import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndPoints {
  static String baseUrl = dotenv.env['BASE_URL'] ?? 'http://localhost:8000';
  static String recyclebin = dotenv.env['RECYCEL_API'] ?? '';
}
