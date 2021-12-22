import 'dart:convert';
import 'dart:io';

import 'package:astrotak/helpers/http_helper.dart';
import 'package:astrotak/model/astro_model.dart';
import 'package:dio/dio.dart';

class AstroRepo extends FetchClient{


  Future<List<AstroModel>> fetchAll() async {
    final uri = Uri.parse('http://www.astrotak.com/astroapi/api/agent/all');
    print('${uri} -> (This is the uri)');

    final Response<dynamic> response = await super.fetchData(uri);
      print('${response} -> (This is the response)');

    if (response.statusCode != 200) {
      throw HttpException(response.data['detail']);
    }

    return AstroModel.toList(response.data['data']);
  }
}