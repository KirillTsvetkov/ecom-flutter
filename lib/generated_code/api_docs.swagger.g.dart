// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_docs.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourcesCategoryShow _$ResourcesCategoryShowFromJson(
        Map<String, dynamic> json) =>
    ResourcesCategoryShow(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ResourcesCategoryShow$Data$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourcesCategoryShowToJson(
        ResourcesCategoryShow instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

ResourcesFoodShow _$ResourcesFoodShowFromJson(Map<String, dynamic> json) =>
    ResourcesFoodShow(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      weight: json['weight'] as int?,
      price: json['price'] as num?,
      ingredients: json['ingredients'] as String?,
      protein: json['protein'] as num?,
      fat: json['fat'] as num?,
      carbohydrates: json['carbohydrates'] as num?,
      calories: json['calories'] as int?,
      categoryId: json['category_id'] as int?,
    );

Map<String, dynamic> _$ResourcesFoodShowToJson(ResourcesFoodShow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'weight': instance.weight,
      'price': instance.price,
      'ingredients': instance.ingredients,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
      'calories': instance.calories,
      'category_id': instance.categoryId,
    };

ResourcesCategoryShow$Data$Item _$ResourcesCategoryShow$Data$ItemFromJson(
        Map<String, dynamic> json) =>
    ResourcesCategoryShow$Data$Item(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResourcesCategoryShow$Data$ItemToJson(
        ResourcesCategoryShow$Data$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
