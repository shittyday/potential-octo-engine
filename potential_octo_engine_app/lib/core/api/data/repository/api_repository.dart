import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:potential_octo_engine_app/core/api/data/models/menu.dart';

class ApiRepository {
  final _dio = Dio();
  ApiRepository();

  Future<List<Menu>> fetchMenu() async {
    final response = await _dio.get(
        'https://gist.githubusercontent.com/moisey312/10b304f7b00ffd17535604f4b38ebe6a/raw/a9e1f131b123aac1d5661215ba54ed164296e866/test.json');
    final List decode = jsonDecode(response.data);
    return decode.map((e) => Menu.fromJson(e)).toList();
  }
}
