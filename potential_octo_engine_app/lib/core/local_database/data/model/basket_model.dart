// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_model.freezed.dart';
part 'basket_model.g.dart';

@freezed
class BasketModel with _$BasketModel {
  const BasketModel._();

  const factory BasketModel({
    required int product_id,
    required double total_price,
    required int quantity,
  }) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
}
