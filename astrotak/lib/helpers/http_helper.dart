import 'package:dio/dio.dart';

class FetchClient{
  Future<Response> fetchData(Uri uri) async {
    return await Dio().getUri(uri);
  }
}