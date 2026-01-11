import 'package:dio/dio.dart';
import 'package:test/utils/constants.dart';

class ApiClient {
  Dio dio;
  ApiClient(this.dio) {
    setupDio();
  }

  setupDio() {
    dio.options = BaseOptions(
        baseUrl: Constants.apiBaseUrl,
        connectTimeout:
            const Duration(milliseconds: Constants.connectionTimeout),
        receiveTimeout: const Duration(milliseconds: Constants.receiveTimeout),
        contentType: 'application/json');
  }
}
