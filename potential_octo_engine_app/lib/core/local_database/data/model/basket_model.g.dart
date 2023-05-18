// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketModel _$$_BasketModelFromJson(Map<String, dynamic> json) =>
    _$_BasketModel(
      product_id: json['product_id'] as int,
      total_price: (json['total_price'] as num).toDouble(),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_BasketModelToJson(_$_BasketModel instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'total_price': instance.total_price,
      'quantity': instance.quantity,
    };
