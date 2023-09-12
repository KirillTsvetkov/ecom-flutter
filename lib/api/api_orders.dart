import 'dart:async';
import 'package:ecom/generated_code/api_docs.swagger.dart';

Future<List<ResourcesFoodShow>> getAllFoods() {
  var uri = Uri(host: 'localhost', port: 80, scheme: 'http');
  var Api = ApiDocs.create(baseUrl: uri);
  return  Api.apiFoodsGet().then((response) {
    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw Exception('Failed to retrieve food items');
    }
  });
}
