import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potential_octo_engine_app/core/api/data/models/product.dart';

part 'basket_model.freezed.dart';
part 'basket_model.g.dart';

@freezed
class BasketModel with _$BasketModel {
  const BasketModel._();

  const factory BasketModel({
    required Product product,
  }) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
}
