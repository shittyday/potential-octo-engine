// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) save,
    required TResult Function(Product product) remove,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? save,
    TResult? Function(Product product)? remove,
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? save,
    TResult Function(Product product)? remove,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataSaveEvent value) save,
    required TResult Function(_LocalDataRemoveEvent value) remove,
    required TResult Function(_LocalDataFetchEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalDataSaveEvent value)? save,
    TResult? Function(_LocalDataRemoveEvent value)? remove,
    TResult? Function(_LocalDataFetchEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataSaveEvent value)? save,
    TResult Function(_LocalDataRemoveEvent value)? remove,
    TResult Function(_LocalDataFetchEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataEventCopyWith<$Res> {
  factory $LocalDataEventCopyWith(
          LocalDataEvent value, $Res Function(LocalDataEvent) then) =
      _$LocalDataEventCopyWithImpl<$Res, LocalDataEvent>;
}

/// @nodoc
class _$LocalDataEventCopyWithImpl<$Res, $Val extends LocalDataEvent>
    implements $LocalDataEventCopyWith<$Res> {
  _$LocalDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LocalDataSaveEventCopyWith<$Res> {
  factory _$$_LocalDataSaveEventCopyWith(_$_LocalDataSaveEvent value,
          $Res Function(_$_LocalDataSaveEvent) then) =
      __$$_LocalDataSaveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$_LocalDataSaveEventCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$_LocalDataSaveEvent>
    implements _$$_LocalDataSaveEventCopyWith<$Res> {
  __$$_LocalDataSaveEventCopyWithImpl(
      _$_LocalDataSaveEvent _value, $Res Function(_$_LocalDataSaveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_LocalDataSaveEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_LocalDataSaveEvent extends _LocalDataSaveEvent {
  const _$_LocalDataSaveEvent({required this.product}) : super._();

  @override
  final Product product;

  @override
  String toString() {
    return 'LocalDataEvent.save(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDataSaveEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDataSaveEventCopyWith<_$_LocalDataSaveEvent> get copyWith =>
      __$$_LocalDataSaveEventCopyWithImpl<_$_LocalDataSaveEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) save,
    required TResult Function(Product product) remove,
    required TResult Function() fetch,
  }) {
    return save(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? save,
    TResult? Function(Product product)? remove,
    TResult? Function()? fetch,
  }) {
    return save?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? save,
    TResult Function(Product product)? remove,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataSaveEvent value) save,
    required TResult Function(_LocalDataRemoveEvent value) remove,
    required TResult Function(_LocalDataFetchEvent value) fetch,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalDataSaveEvent value)? save,
    TResult? Function(_LocalDataRemoveEvent value)? remove,
    TResult? Function(_LocalDataFetchEvent value)? fetch,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataSaveEvent value)? save,
    TResult Function(_LocalDataRemoveEvent value)? remove,
    TResult Function(_LocalDataFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _LocalDataSaveEvent extends LocalDataEvent {
  const factory _LocalDataSaveEvent({required final Product product}) =
      _$_LocalDataSaveEvent;
  const _LocalDataSaveEvent._() : super._();

  Product get product;
  @JsonKey(ignore: true)
  _$$_LocalDataSaveEventCopyWith<_$_LocalDataSaveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalDataRemoveEventCopyWith<$Res> {
  factory _$$_LocalDataRemoveEventCopyWith(_$_LocalDataRemoveEvent value,
          $Res Function(_$_LocalDataRemoveEvent) then) =
      __$$_LocalDataRemoveEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$_LocalDataRemoveEventCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$_LocalDataRemoveEvent>
    implements _$$_LocalDataRemoveEventCopyWith<$Res> {
  __$$_LocalDataRemoveEventCopyWithImpl(_$_LocalDataRemoveEvent _value,
      $Res Function(_$_LocalDataRemoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_LocalDataRemoveEvent(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_LocalDataRemoveEvent extends _LocalDataRemoveEvent {
  const _$_LocalDataRemoveEvent({required this.product}) : super._();

  @override
  final Product product;

  @override
  String toString() {
    return 'LocalDataEvent.remove(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDataRemoveEvent &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDataRemoveEventCopyWith<_$_LocalDataRemoveEvent> get copyWith =>
      __$$_LocalDataRemoveEventCopyWithImpl<_$_LocalDataRemoveEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) save,
    required TResult Function(Product product) remove,
    required TResult Function() fetch,
  }) {
    return remove(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? save,
    TResult? Function(Product product)? remove,
    TResult? Function()? fetch,
  }) {
    return remove?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? save,
    TResult Function(Product product)? remove,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataSaveEvent value) save,
    required TResult Function(_LocalDataRemoveEvent value) remove,
    required TResult Function(_LocalDataFetchEvent value) fetch,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalDataSaveEvent value)? save,
    TResult? Function(_LocalDataRemoveEvent value)? remove,
    TResult? Function(_LocalDataFetchEvent value)? fetch,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataSaveEvent value)? save,
    TResult Function(_LocalDataRemoveEvent value)? remove,
    TResult Function(_LocalDataFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _LocalDataRemoveEvent extends LocalDataEvent {
  const factory _LocalDataRemoveEvent({required final Product product}) =
      _$_LocalDataRemoveEvent;
  const _LocalDataRemoveEvent._() : super._();

  Product get product;
  @JsonKey(ignore: true)
  _$$_LocalDataRemoveEventCopyWith<_$_LocalDataRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalDataFetchEventCopyWith<$Res> {
  factory _$$_LocalDataFetchEventCopyWith(_$_LocalDataFetchEvent value,
          $Res Function(_$_LocalDataFetchEvent) then) =
      __$$_LocalDataFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalDataFetchEventCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$_LocalDataFetchEvent>
    implements _$$_LocalDataFetchEventCopyWith<$Res> {
  __$$_LocalDataFetchEventCopyWithImpl(_$_LocalDataFetchEvent _value,
      $Res Function(_$_LocalDataFetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LocalDataFetchEvent extends _LocalDataFetchEvent {
  const _$_LocalDataFetchEvent() : super._();

  @override
  String toString() {
    return 'LocalDataEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocalDataFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) save,
    required TResult Function(Product product) remove,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? save,
    TResult? Function(Product product)? remove,
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? save,
    TResult Function(Product product)? remove,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataSaveEvent value) save,
    required TResult Function(_LocalDataRemoveEvent value) remove,
    required TResult Function(_LocalDataFetchEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalDataSaveEvent value)? save,
    TResult? Function(_LocalDataRemoveEvent value)? remove,
    TResult? Function(_LocalDataFetchEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataSaveEvent value)? save,
    TResult Function(_LocalDataRemoveEvent value)? remove,
    TResult Function(_LocalDataFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _LocalDataFetchEvent extends LocalDataEvent {
  const factory _LocalDataFetchEvent() = _$_LocalDataFetchEvent;
  const _LocalDataFetchEvent._() : super._();
}
