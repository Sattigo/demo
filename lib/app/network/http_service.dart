import 'package:dio/dio.dart';

class HttpService {
  static Dio getClient({required String apiUrl}) {
    final options = BaseOptions(
      baseUrl: apiUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      responseType: ResponseType.json,
    );
    final client = Dio(options);
    return client;
  }
}
