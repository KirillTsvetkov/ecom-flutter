// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_docs.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiDocs extends ApiDocs {
  _$ApiDocs([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiDocs;

  @override
  Future<Response<List<ResourcesCategoryShow>>> _apiCategoryGet() {
    final Uri $url = Uri.parse('/api/category');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ResourcesCategoryShow>, ResourcesCategoryShow>($request);
  }

  @override
  Future<Response<List<ResourcesFoodShow>>> _apiFoodsGet() {
    final Uri $url = Uri.parse('/api/foods');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ResourcesFoodShow>, ResourcesFoodShow>($request);
  }
}
