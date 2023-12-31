import 'dart:async';
import 'package:ecom/generated_code/api_docs.swagger.dart';

Future<List<ResourcesFoodShow$Data$Item>?> getAllFoods(int page, int perPage) {
  var uri = Uri(host: 'localhost', port: 80, scheme: 'http');
  var Api = ApiDocs.create(baseUrl: uri);
  return  Api.apiFoodsGet(page:page, perPage:perPage).then((response) {
    if (response.isSuccessful) {
      return response.body?.data;
    } else {
      throw Exception('Failed to retrieve food items');
    }
  });
}