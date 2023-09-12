// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart' as chopper;

part 'api_docs.swagger.chopper.dart';
part 'api_docs.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ApiDocs extends ChopperService {
  static ApiDocs create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$ApiDocs(client);
    }

    final newClient = ChopperClient(
        services: [_$ApiDocs()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$ApiDocs(newClient);
  }

  ///Get all category objects
  Future<chopper.Response<List<ResourcesCategoryShow>>> apiCategoryGet() {
    generatedMapping.putIfAbsent(
        ResourcesCategoryShow, () => ResourcesCategoryShow.fromJsonFactory);

    return _apiCategoryGet();
  }

  ///Get all category objects
  @Get(path: '/api/category')
  Future<chopper.Response<List<ResourcesCategoryShow>>> _apiCategoryGet();

  ///Get all food objects
  Future<chopper.Response<List<ResourcesFoodShow>>> apiFoodsGet() {
    generatedMapping.putIfAbsent(
        ResourcesFoodShow, () => ResourcesFoodShow.fromJsonFactory);

    return _apiFoodsGet();
  }

  ///Get all food objects
  @Get(path: '/api/foods')
  Future<chopper.Response<List<ResourcesFoodShow>>> _apiFoodsGet();
}

@JsonSerializable(explicitToJson: true)
class ResourcesCategoryShow {
  ResourcesCategoryShow({
    this.data,
  });

  factory ResourcesCategoryShow.fromJson(Map<String, dynamic> json) =>
      _$ResourcesCategoryShowFromJson(json);

  static const toJsonFactory = _$ResourcesCategoryShowToJson;
  Map<String, dynamic> toJson() => _$ResourcesCategoryShowToJson(this);

  @JsonKey(name: 'data')
  final List<ResourcesCategoryShow$Data$Item>? data;
  static const fromJsonFactory = _$ResourcesCategoryShowFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourcesCategoryShow &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ResourcesCategoryShowExtension on ResourcesCategoryShow {
  ResourcesCategoryShow copyWith(
      {List<ResourcesCategoryShow$Data$Item>? data}) {
    return ResourcesCategoryShow(data: data ?? this.data);
  }

  ResourcesCategoryShow copyWithWrapped(
      {Wrapped<List<ResourcesCategoryShow$Data$Item>?>? data}) {
    return ResourcesCategoryShow(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ResourcesFoodShow {
  ResourcesFoodShow({
    this.id,
    this.name,
    this.description,
    this.weight,
    this.price,
    this.ingredients,
    this.protein,
    this.fat,
    this.carbohydrates,
    this.calories,
    this.categoryId,
  });

  factory ResourcesFoodShow.fromJson(Map<String, dynamic> json) =>
      _$ResourcesFoodShowFromJson(json);

  static const toJsonFactory = _$ResourcesFoodShowToJson;
  Map<String, dynamic> toJson() => _$ResourcesFoodShowToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'weight')
  final int? weight;
  @JsonKey(name: 'price')
  final num? price;
  @JsonKey(name: 'ingredients')
  final String? ingredients;
  @JsonKey(name: 'protein')
  final num? protein;
  @JsonKey(name: 'fat')
  final num? fat;
  @JsonKey(name: 'carbohydrates')
  final num? carbohydrates;
  @JsonKey(name: 'calories')
  final int? calories;
  @JsonKey(name: 'category_id')
  final int? categoryId;
  static const fromJsonFactory = _$ResourcesFoodShowFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourcesFoodShow &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.protein, protein) ||
                const DeepCollectionEquality()
                    .equals(other.protein, protein)) &&
            (identical(other.fat, fat) ||
                const DeepCollectionEquality().equals(other.fat, fat)) &&
            (identical(other.carbohydrates, carbohydrates) ||
                const DeepCollectionEquality()
                    .equals(other.carbohydrates, carbohydrates)) &&
            (identical(other.calories, calories) ||
                const DeepCollectionEquality()
                    .equals(other.calories, calories)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(protein) ^
      const DeepCollectionEquality().hash(fat) ^
      const DeepCollectionEquality().hash(carbohydrates) ^
      const DeepCollectionEquality().hash(calories) ^
      const DeepCollectionEquality().hash(categoryId) ^
      runtimeType.hashCode;
}

extension $ResourcesFoodShowExtension on ResourcesFoodShow {
  ResourcesFoodShow copyWith(
      {int? id,
      String? name,
      String? description,
      int? weight,
      num? price,
      String? ingredients,
      num? protein,
      num? fat,
      num? carbohydrates,
      int? calories,
      int? categoryId}) {
    return ResourcesFoodShow(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        weight: weight ?? this.weight,
        price: price ?? this.price,
        ingredients: ingredients ?? this.ingredients,
        protein: protein ?? this.protein,
        fat: fat ?? this.fat,
        carbohydrates: carbohydrates ?? this.carbohydrates,
        calories: calories ?? this.calories,
        categoryId: categoryId ?? this.categoryId);
  }

  ResourcesFoodShow copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? weight,
      Wrapped<num?>? price,
      Wrapped<String?>? ingredients,
      Wrapped<num?>? protein,
      Wrapped<num?>? fat,
      Wrapped<num?>? carbohydrates,
      Wrapped<int?>? calories,
      Wrapped<int?>? categoryId}) {
    return ResourcesFoodShow(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        weight: (weight != null ? weight.value : this.weight),
        price: (price != null ? price.value : this.price),
        ingredients:
            (ingredients != null ? ingredients.value : this.ingredients),
        protein: (protein != null ? protein.value : this.protein),
        fat: (fat != null ? fat.value : this.fat),
        carbohydrates:
            (carbohydrates != null ? carbohydrates.value : this.carbohydrates),
        calories: (calories != null ? calories.value : this.calories),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId));
  }
}

@JsonSerializable(explicitToJson: true)
class ResourcesCategoryShow$Data$Item {
  ResourcesCategoryShow$Data$Item({
    this.id,
    this.name,
  });

  factory ResourcesCategoryShow$Data$Item.fromJson(Map<String, dynamic> json) =>
      _$ResourcesCategoryShow$Data$ItemFromJson(json);

  static const toJsonFactory = _$ResourcesCategoryShow$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$ResourcesCategoryShow$Data$ItemToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ResourcesCategoryShow$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResourcesCategoryShow$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ResourcesCategoryShow$Data$ItemExtension
    on ResourcesCategoryShow$Data$Item {
  ResourcesCategoryShow$Data$Item copyWith({int? id, String? name}) {
    return ResourcesCategoryShow$Data$Item(
        id: id ?? this.id, name: name ?? this.name);
  }

  ResourcesCategoryShow$Data$Item copyWithWrapped(
      {Wrapped<int?>? id, Wrapped<String?>? name}) {
    return ResourcesCategoryShow$Data$Item(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
