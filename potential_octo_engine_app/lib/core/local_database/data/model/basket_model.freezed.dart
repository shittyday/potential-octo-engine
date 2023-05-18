// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketModel _$BasketModelFromJson(Map<String, dynamic> json) {
  return _BasketModel.fromJson(json);
}

/// @nodoc
mixin _$BasketModel {
  int get product_id => throw _privateConstructorUsedError;
  double get total_price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketModelCopyWith<BasketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketModelCopyWith<$Res> {
  factory $BasketModelCopyWith(
          BasketModel value, $Res Function(BasketModel) then) =
      _$BasketModelCopyWithImpl<$Res, BasketModel>;
  @useResult
  $Res call({int product_id, double total_price, int quantity});
}

/// @nodoc
class _$BasketModelCopyWithImpl<$Res, $Val extends BasketModel>
    implements $BasketModelCopyWith<$Res> {
  _$BasketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? total_price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketModelCopyWith<$Res>
    implements $BasketModelCopyWith<$Res> {
  factory _$$_BasketModelCopyWith(
          _$_BasketModel value, $Res Function(_$_BasketModel) then) =
      __$$_BasketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int product_id, double total_price, int quantity});
}

/// @nodoc
class __$$_BasketModelCopyWithImpl<$Res>
    extends _$BasketModelCopyWithImpl<$Res, _$_BasketModel>
    implements _$$_BasketModelCopyWith<$Res> {
  __$$_BasketModelCopyWithImpl(
      _$_BasketModel _value, $Res Function(_$_BasketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? total_price = null,
    Object? quantity = null,
  }) {
    return _then(_$_BasketModel(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      total_price: null == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketModel extends _BasketModel {
  const _$_BasketModel(
      {required this.product_id,
      required this.total_price,
      required this.quantity})
      : super._();

  factory _$_BasketModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketModelFromJson(json);

  @override
  final int product_id;
  @override
  final double total_price;
  @override
  final int quantity;

  @override
  String toString() {
    return 'BasketModel(product_id: $product_id, total_price: $total_price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketModel &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, product_id, total_price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketModelCopyWith<_$_BasketModel> get copyWith =>
      __$$_BasketModelCopyWithImpl<_$_BasketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketModelToJson(
      this,
    );
  }
}

abstract class _BasketModel extends BasketModel {
  const factory _BasketModel(
      {required final int product_id,
      required final double total_price,
      required final int quantity}) = _$_BasketModel;
  const _BasketModel._() : super._();

  factory _BasketModel.fromJson(Map<String, dynamic> json) =
      _$_BasketModel.fromJson;

  @override
  int get product_id;
  @override
  double get total_price;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_BasketModelCopyWith<_$_BasketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
