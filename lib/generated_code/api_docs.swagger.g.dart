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
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ResourcesFoodShow$Data$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : CommonLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : CommonMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourcesFoodShowToJson(ResourcesFoodShow instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

CommonLinks _$CommonLinksFromJson(Map<String, dynamic> json) => CommonLinks(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$CommonLinksToJson(CommonLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

CommonMeta _$CommonMetaFromJson(Map<String, dynamic> json) => CommonMeta(
      currentPage: json['current_page'] as int?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      links: (json['links'] as List<dynamic>?)
          ?.map(
              (e) => CommonMeta$Links$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$CommonMetaToJson(CommonMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links?.map((e) => e.toJson()).toList(),
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
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

ResourcesFoodShow$Data$Item _$ResourcesFoodShow$Data$ItemFromJson(
        Map<String, dynamic> json) =>
    ResourcesFoodShow$Data$Item(
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

Map<String, dynamic> _$ResourcesFoodShow$Data$ItemToJson(
        ResourcesFoodShow$Data$Item instance) =>
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

CommonMeta$Links$Item _$CommonMeta$Links$ItemFromJson(
        Map<String, dynamic> json) =>
    CommonMeta$Links$Item(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$CommonMeta$Links$ItemToJson(
        CommonMeta$Links$Item instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
