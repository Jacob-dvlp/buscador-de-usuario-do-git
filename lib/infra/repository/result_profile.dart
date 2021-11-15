import 'package:dio/dio.dart';

import '../../endPoints/endpoints.dart';

class ServiceSearchUser {

  final _dio = Dio();
  
  Future searchUserGit(query) async {
    try {
      final response = await _dio.get(dns + query);
      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future getRepositorio(query) async {
    try {
      final response = await _dio.get(dns + query + "/repos");
      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
