// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee_item_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoffeeItemOrder _$CoffeeItemOrderFromJson(Map<String, dynamic> json) {
  return _CoffeeItemOrder.fromJson(json);
}

/// @nodoc
mixin _$CoffeeItemOrder {
  Coffee get coffee => throw _privateConstructorUsedError;
  Milk get milk => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeItemOrderCopyWith<CoffeeItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeItemOrderCopyWith<$Res> {
  factory $CoffeeItemOrderCopyWith(
          CoffeeItemOrder value, $Res Function(CoffeeItemOrder) then) =
      _$CoffeeItemOrderCopyWithImpl<$Res, CoffeeItemOrder>;
  @useResult
  $Res call({Coffee coffee, Milk milk, int count});

  $CoffeeCopyWith<$Res> get coffee;
}

/// @nodoc
class _$CoffeeItemOrderCopyWithImpl<$Res, $Val extends CoffeeItemOrder>
    implements $CoffeeItemOrderCopyWith<$Res> {
  _$CoffeeItemOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
    Object? milk = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      coffee: null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
      milk: null == milk
          ? _value.milk
          : milk // ignore: cast_nullable_to_non_nullable
              as Milk,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeCopyWith<$Res> get coffee {
    return $CoffeeCopyWith<$Res>(_value.coffee, (value) {
      return _then(_value.copyWith(coffee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CoffeeItemOrderCopyWith<$Res>
    implements $CoffeeItemOrderCopyWith<$Res> {
  factory _$$_CoffeeItemOrderCopyWith(
          _$_CoffeeItemOrder value, $Res Function(_$_CoffeeItemOrder) then) =
      __$$_CoffeeItemOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coffee coffee, Milk milk, int count});

  @override
  $CoffeeCopyWith<$Res> get coffee;
}

/// @nodoc
class __$$_CoffeeItemOrderCopyWithImpl<$Res>
    extends _$CoffeeItemOrderCopyWithImpl<$Res, _$_CoffeeItemOrder>
    implements _$$_CoffeeItemOrderCopyWith<$Res> {
  __$$_CoffeeItemOrderCopyWithImpl(
      _$_CoffeeItemOrder _value, $Res Function(_$_CoffeeItemOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
    Object? milk = null,
    Object? count = null,
  }) {
    return _then(_$_CoffeeItemOrder(
      coffee: null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
      milk: null == milk
          ? _value.milk
          : milk // ignore: cast_nullable_to_non_nullable
              as Milk,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoffeeItemOrder implements _CoffeeItemOrder {
  const _$_CoffeeItemOrder(
      {required this.coffee, this.milk = Milk.oatMilk, required this.count});

  factory _$_CoffeeItemOrder.fromJson(Map<String, dynamic> json) =>
      _$$_CoffeeItemOrderFromJson(json);

  @override
  final Coffee coffee;
  @override
  @JsonKey()
  final Milk milk;
  @override
  final int count;

  @override
  String toString() {
    return 'CoffeeItemOrder(coffee: $coffee, milk: $milk, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeItemOrder &&
            (identical(other.coffee, coffee) || other.coffee == coffee) &&
            (identical(other.milk, milk) || other.milk == milk) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coffee, milk, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeItemOrderCopyWith<_$_CoffeeItemOrder> get copyWith =>
      __$$_CoffeeItemOrderCopyWithImpl<_$_CoffeeItemOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoffeeItemOrderToJson(
      this,
    );
  }
}

abstract class _CoffeeItemOrder implements CoffeeItemOrder {
  const factory _CoffeeItemOrder(
      {required final Coffee coffee,
      final Milk milk,
      required final int count}) = _$_CoffeeItemOrder;

  factory _CoffeeItemOrder.fromJson(Map<String, dynamic> json) =
      _$_CoffeeItemOrder.fromJson;

  @override
  Coffee get coffee;
  @override
  Milk get milk;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeItemOrderCopyWith<_$_CoffeeItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
