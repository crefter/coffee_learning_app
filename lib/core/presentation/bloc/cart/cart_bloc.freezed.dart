// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CartEventAddCopyWith<$Res> {
  factory _$$_CartEventAddCopyWith(
          _$_CartEventAdd value, $Res Function(_$_CartEventAdd) then) =
      __$$_CartEventAddCopyWithImpl<$Res>;
  @useResult
  $Res call({CoffeeItemOrder item});

  $CoffeeItemOrderCopyWith<$Res> get item;
}

/// @nodoc
class __$$_CartEventAddCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartEventAdd>
    implements _$$_CartEventAddCopyWith<$Res> {
  __$$_CartEventAddCopyWithImpl(
      _$_CartEventAdd _value, $Res Function(_$_CartEventAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_CartEventAdd(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CoffeeItemOrder,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeItemOrderCopyWith<$Res> get item {
    return $CoffeeItemOrderCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$_CartEventAdd implements _CartEventAdd {
  const _$_CartEventAdd(this.item);

  @override
  final CoffeeItemOrder item;

  @override
  String toString() {
    return 'CartEvent.add(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventAdd &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEventAddCopyWith<_$_CartEventAdd> get copyWith =>
      __$$_CartEventAddCopyWithImpl<_$_CartEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) {
    return add(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) {
    return add?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _CartEventAdd implements CartEvent {
  const factory _CartEventAdd(final CoffeeItemOrder item) = _$_CartEventAdd;

  CoffeeItemOrder get item;
  @JsonKey(ignore: true)
  _$$_CartEventAddCopyWith<_$_CartEventAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventPlusCopyWith<$Res> {
  factory _$$_CartEventPlusCopyWith(
          _$_CartEventPlus value, $Res Function(_$_CartEventPlus) then) =
      __$$_CartEventPlusCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_CartEventPlusCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartEventPlus>
    implements _$$_CartEventPlusCopyWith<$Res> {
  __$$_CartEventPlusCopyWithImpl(
      _$_CartEventPlus _value, $Res Function(_$_CartEventPlus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_CartEventPlus(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartEventPlus implements _CartEventPlus {
  const _$_CartEventPlus(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.plus(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventPlus &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEventPlusCopyWith<_$_CartEventPlus> get copyWith =>
      __$$_CartEventPlusCopyWithImpl<_$_CartEventPlus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) {
    return plus(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) {
    return plus?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (plus != null) {
      return plus(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) {
    return plus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) {
    return plus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (plus != null) {
      return plus(this);
    }
    return orElse();
  }
}

abstract class _CartEventPlus implements CartEvent {
  const factory _CartEventPlus(final int index) = _$_CartEventPlus;

  int get index;
  @JsonKey(ignore: true)
  _$$_CartEventPlusCopyWith<_$_CartEventPlus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventMinusCopyWith<$Res> {
  factory _$$_CartEventMinusCopyWith(
          _$_CartEventMinus value, $Res Function(_$_CartEventMinus) then) =
      __$$_CartEventMinusCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_CartEventMinusCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartEventMinus>
    implements _$$_CartEventMinusCopyWith<$Res> {
  __$$_CartEventMinusCopyWithImpl(
      _$_CartEventMinus _value, $Res Function(_$_CartEventMinus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_CartEventMinus(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartEventMinus implements _CartEventMinus {
  const _$_CartEventMinus(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.minus(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventMinus &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEventMinusCopyWith<_$_CartEventMinus> get copyWith =>
      __$$_CartEventMinusCopyWithImpl<_$_CartEventMinus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) {
    return minus(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) {
    return minus?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (minus != null) {
      return minus(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) {
    return minus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) {
    return minus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (minus != null) {
      return minus(this);
    }
    return orElse();
  }
}

abstract class _CartEventMinus implements CartEvent {
  const factory _CartEventMinus(final int index) = _$_CartEventMinus;

  int get index;
  @JsonKey(ignore: true)
  _$$_CartEventMinusCopyWith<_$_CartEventMinus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventDeleteCopyWith<$Res> {
  factory _$$_CartEventDeleteCopyWith(
          _$_CartEventDelete value, $Res Function(_$_CartEventDelete) then) =
      __$$_CartEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_CartEventDeleteCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartEventDelete>
    implements _$$_CartEventDeleteCopyWith<$Res> {
  __$$_CartEventDeleteCopyWithImpl(
      _$_CartEventDelete _value, $Res Function(_$_CartEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_CartEventDelete(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartEventDelete implements _CartEventDelete {
  const _$_CartEventDelete(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.delete(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEventDelete &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEventDeleteCopyWith<_$_CartEventDelete> get copyWith =>
      __$$_CartEventDeleteCopyWithImpl<_$_CartEventDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) {
    return delete?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _CartEventDelete implements CartEvent {
  const factory _CartEventDelete(final int index) = _$_CartEventDelete;

  int get index;
  @JsonKey(ignore: true)
  _$$_CartEventDeleteCopyWith<_$_CartEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartEventLoadCopyWith<$Res> {
  factory _$$_CartEventLoadCopyWith(
          _$_CartEventLoad value, $Res Function(_$_CartEventLoad) then) =
      __$$_CartEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartEventLoadCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartEventLoad>
    implements _$$_CartEventLoadCopyWith<$Res> {
  __$$_CartEventLoadCopyWithImpl(
      _$_CartEventLoad _value, $Res Function(_$_CartEventLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartEventLoad implements _CartEventLoad {
  const _$_CartEventLoad();

  @override
  String toString() {
    return 'CartEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoffeeItemOrder item) add,
    required TResult Function(int index) plus,
    required TResult Function(int index) minus,
    required TResult Function(int index) delete,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoffeeItemOrder item)? add,
    TResult? Function(int index)? plus,
    TResult? Function(int index)? minus,
    TResult? Function(int index)? delete,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoffeeItemOrder item)? add,
    TResult Function(int index)? plus,
    TResult Function(int index)? minus,
    TResult Function(int index)? delete,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEventAdd value) add,
    required TResult Function(_CartEventPlus value) plus,
    required TResult Function(_CartEventMinus value) minus,
    required TResult Function(_CartEventDelete value) delete,
    required TResult Function(_CartEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEventAdd value)? add,
    TResult? Function(_CartEventPlus value)? plus,
    TResult? Function(_CartEventMinus value)? minus,
    TResult? Function(_CartEventDelete value)? delete,
    TResult? Function(_CartEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEventAdd value)? add,
    TResult Function(_CartEventPlus value)? plus,
    TResult Function(_CartEventMinus value)? minus,
    TResult Function(_CartEventDelete value)? delete,
    TResult Function(_CartEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _CartEventLoad implements CartEvent {
  const factory _CartEventLoad() = _$_CartEventLoad;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CoffeeItemOrder> items) loaded,
    required TResult Function(List<CoffeeItemOrder> items, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<CoffeeItemOrder> items)? loaded,
    TResult? Function(List<CoffeeItemOrder> items, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CoffeeItemOrder> items)? loaded,
    TResult Function(List<CoffeeItemOrder> items, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStartEmpty value) empty,
    required TResult Function(_CartStartLoading value) loading,
    required TResult Function(_CartStartLoaded value) loaded,
    required TResult Function(_CartStartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStartEmpty value)? empty,
    TResult? Function(_CartStartLoading value)? loading,
    TResult? Function(_CartStartLoaded value)? loaded,
    TResult? Function(_CartStartError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStartEmpty value)? empty,
    TResult Function(_CartStartLoading value)? loading,
    TResult Function(_CartStartLoaded value)? loaded,
    TResult Function(_CartStartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CartStartEmptyCopyWith<$Res> {
  factory _$$_CartStartEmptyCopyWith(
          _$_CartStartEmpty value, $Res Function(_$_CartStartEmpty) then) =
      __$$_CartStartEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartStartEmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartStartEmpty>
    implements _$$_CartStartEmptyCopyWith<$Res> {
  __$$_CartStartEmptyCopyWithImpl(
      _$_CartStartEmpty _value, $Res Function(_$_CartStartEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartStartEmpty extends _CartStartEmpty {
  const _$_CartStartEmpty() : super._();

  @override
  String toString() {
    return 'CartState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartStartEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CoffeeItemOrder> items) loaded,
    required TResult Function(List<CoffeeItemOrder> items, String message)
        error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<CoffeeItemOrder> items)? loaded,
    TResult? Function(List<CoffeeItemOrder> items, String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CoffeeItemOrder> items)? loaded,
    TResult Function(List<CoffeeItemOrder> items, String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStartEmpty value) empty,
    required TResult Function(_CartStartLoading value) loading,
    required TResult Function(_CartStartLoaded value) loaded,
    required TResult Function(_CartStartError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStartEmpty value)? empty,
    TResult? Function(_CartStartLoading value)? loading,
    TResult? Function(_CartStartLoaded value)? loaded,
    TResult? Function(_CartStartError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStartEmpty value)? empty,
    TResult Function(_CartStartLoading value)? loading,
    TResult Function(_CartStartLoaded value)? loaded,
    TResult Function(_CartStartError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _CartStartEmpty extends CartState {
  const factory _CartStartEmpty() = _$_CartStartEmpty;
  const _CartStartEmpty._() : super._();
}

/// @nodoc
abstract class _$$_CartStartLoadingCopyWith<$Res> {
  factory _$$_CartStartLoadingCopyWith(
          _$_CartStartLoading value, $Res Function(_$_CartStartLoading) then) =
      __$$_CartStartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartStartLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartStartLoading>
    implements _$$_CartStartLoadingCopyWith<$Res> {
  __$$_CartStartLoadingCopyWithImpl(
      _$_CartStartLoading _value, $Res Function(_$_CartStartLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartStartLoading extends _CartStartLoading {
  const _$_CartStartLoading() : super._();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartStartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CoffeeItemOrder> items) loaded,
    required TResult Function(List<CoffeeItemOrder> items, String message)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<CoffeeItemOrder> items)? loaded,
    TResult? Function(List<CoffeeItemOrder> items, String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CoffeeItemOrder> items)? loaded,
    TResult Function(List<CoffeeItemOrder> items, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStartEmpty value) empty,
    required TResult Function(_CartStartLoading value) loading,
    required TResult Function(_CartStartLoaded value) loaded,
    required TResult Function(_CartStartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStartEmpty value)? empty,
    TResult? Function(_CartStartLoading value)? loading,
    TResult? Function(_CartStartLoaded value)? loaded,
    TResult? Function(_CartStartError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStartEmpty value)? empty,
    TResult Function(_CartStartLoading value)? loading,
    TResult Function(_CartStartLoaded value)? loaded,
    TResult Function(_CartStartError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartStartLoading extends CartState {
  const factory _CartStartLoading() = _$_CartStartLoading;
  const _CartStartLoading._() : super._();
}

/// @nodoc
abstract class _$$_CartStartLoadedCopyWith<$Res> {
  factory _$$_CartStartLoadedCopyWith(
          _$_CartStartLoaded value, $Res Function(_$_CartStartLoaded) then) =
      __$$_CartStartLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CoffeeItemOrder> items});
}

/// @nodoc
class __$$_CartStartLoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartStartLoaded>
    implements _$$_CartStartLoadedCopyWith<$Res> {
  __$$_CartStartLoadedCopyWithImpl(
      _$_CartStartLoaded _value, $Res Function(_$_CartStartLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_CartStartLoaded(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CoffeeItemOrder>,
    ));
  }
}

/// @nodoc

class _$_CartStartLoaded extends _CartStartLoaded {
  const _$_CartStartLoaded(final List<CoffeeItemOrder> items)
      : _items = items,
        super._();

  final List<CoffeeItemOrder> _items;
  @override
  List<CoffeeItemOrder> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartStartLoaded &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStartLoadedCopyWith<_$_CartStartLoaded> get copyWith =>
      __$$_CartStartLoadedCopyWithImpl<_$_CartStartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CoffeeItemOrder> items) loaded,
    required TResult Function(List<CoffeeItemOrder> items, String message)
        error,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<CoffeeItemOrder> items)? loaded,
    TResult? Function(List<CoffeeItemOrder> items, String message)? error,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CoffeeItemOrder> items)? loaded,
    TResult Function(List<CoffeeItemOrder> items, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStartEmpty value) empty,
    required TResult Function(_CartStartLoading value) loading,
    required TResult Function(_CartStartLoaded value) loaded,
    required TResult Function(_CartStartError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStartEmpty value)? empty,
    TResult? Function(_CartStartLoading value)? loading,
    TResult? Function(_CartStartLoaded value)? loaded,
    TResult? Function(_CartStartError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStartEmpty value)? empty,
    TResult Function(_CartStartLoading value)? loading,
    TResult Function(_CartStartLoaded value)? loaded,
    TResult Function(_CartStartError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CartStartLoaded extends CartState {
  const factory _CartStartLoaded(final List<CoffeeItemOrder> items) =
      _$_CartStartLoaded;
  const _CartStartLoaded._() : super._();

  List<CoffeeItemOrder> get items;
  @JsonKey(ignore: true)
  _$$_CartStartLoadedCopyWith<_$_CartStartLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartStartErrorCopyWith<$Res> {
  factory _$$_CartStartErrorCopyWith(
          _$_CartStartError value, $Res Function(_$_CartStartError) then) =
      __$$_CartStartErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CoffeeItemOrder> items, String message});
}

/// @nodoc
class __$$_CartStartErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartStartError>
    implements _$$_CartStartErrorCopyWith<$Res> {
  __$$_CartStartErrorCopyWithImpl(
      _$_CartStartError _value, $Res Function(_$_CartStartError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? message = null,
  }) {
    return _then(_$_CartStartError(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CoffeeItemOrder>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartStartError extends _CartStartError {
  const _$_CartStartError(final List<CoffeeItemOrder> items, this.message)
      : _items = items,
        super._();

  final List<CoffeeItemOrder> _items;
  @override
  List<CoffeeItemOrder> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(items: $items, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartStartError &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStartErrorCopyWith<_$_CartStartError> get copyWith =>
      __$$_CartStartErrorCopyWithImpl<_$_CartStartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<CoffeeItemOrder> items) loaded,
    required TResult Function(List<CoffeeItemOrder> items, String message)
        error,
  }) {
    return error(items, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<CoffeeItemOrder> items)? loaded,
    TResult? Function(List<CoffeeItemOrder> items, String message)? error,
  }) {
    return error?.call(items, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<CoffeeItemOrder> items)? loaded,
    TResult Function(List<CoffeeItemOrder> items, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(items, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStartEmpty value) empty,
    required TResult Function(_CartStartLoading value) loading,
    required TResult Function(_CartStartLoaded value) loaded,
    required TResult Function(_CartStartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartStartEmpty value)? empty,
    TResult? Function(_CartStartLoading value)? loading,
    TResult? Function(_CartStartLoaded value)? loaded,
    TResult? Function(_CartStartError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStartEmpty value)? empty,
    TResult Function(_CartStartLoading value)? loading,
    TResult Function(_CartStartLoaded value)? loaded,
    TResult Function(_CartStartError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CartStartError extends CartState {
  const factory _CartStartError(
          final List<CoffeeItemOrder> items, final String message) =
      _$_CartStartError;
  const _CartStartError._() : super._();

  List<CoffeeItemOrder> get items;
  String get message;
  @JsonKey(ignore: true)
  _$$_CartStartErrorCopyWith<_$_CartStartError> get copyWith =>
      throw _privateConstructorUsedError;
}
