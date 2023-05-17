// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      description: json['description'] as String?,
      categoryId: json['categoryId'] as int,
      cost: json['cost'] as int,
      id: json['id'] as int,
      imageUrl: json['image_url'] as String,
      name: json['name'] as String,
      sizes: json['sizes'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'cost': instance.cost,
      'sizes': instance.sizes,
      'categoryId': instance.categoryId,
      'description': instance.description,
    };
