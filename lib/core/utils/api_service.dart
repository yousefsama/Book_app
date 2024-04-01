import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    Response response = await dio.get("$_baseUrl$endpoint");
    return response.data;
  }
}
