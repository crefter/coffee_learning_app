// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffeeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(CoffeeType type) typeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoadingCoffeeListEvent value) startLoading,
    required TResult Function(_TypeSelectedCoffeeListEvent value) typeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeListEventCopyWith<$Res> {
  factory $CoffeeListEventCopyWith(
          CoffeeListEvent value, $Res Function(CoffeeListEvent) then) =
      _$CoffeeListEventCopyWithImpl<$Res, CoffeeListEvent>;
}

/// @nodoc
class _$CoffeeListEventCopyWithImpl<$Res, $Val extends CoffeeListEvent>
    implements $CoffeeListEventCopyWith<$Res> {
  _$CoffeeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartLoadingCoffeeListEventCopyWith<$Res> {
  factory _$$_StartLoadingCoffeeListEventCopyWith(
          _$_StartLoadingCoffeeListEvent value,
          $Res Function(_$_StartLoadingCoffeeListEvent) then) =
      __$$_StartLoadingCoffeeListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartLoadingCoffeeListEventCopyWithImpl<$Res>
    extends _$CoffeeListEventCopyWithImpl<$Res, _$_StartLoadingCoffeeListEvent>
    implements _$$_StartLoadingCoffeeListEventCopyWith<$Res> {
  __$$_StartLoadingCoffeeListEventCopyWithImpl(
      _$_StartLoadingCoffeeListEvent _value,
      $Res Function(_$_StartLoadingCoffeeListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartLoadingCoffeeListEvent implements _StartLoadingCoffeeListEvent {
  const _$_StartLoadingCoffeeListEvent();

  @override
  String toString() {
    return 'CoffeeListEvent.startLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartLoadingCoffeeListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(CoffeeType type) typeSelected,
  }) {
    return startLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
  }) {
    return startLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoadingCoffeeListEvent value) startLoading,
    required TResult Function(_TypeSelectedCoffeeListEvent value) typeSelected,
  }) {
    return startLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
  }) {
    return startLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    required TResult orElse(),
  }) {
    if (startLoading != null) {
      return startLoading(this);
    }
    return orElse();
  }
}

abstract class _StartLoadingCoffeeListEvent implements CoffeeListEvent {
  const factory _StartLoadingCoffeeListEvent() = _$_StartLoadingCoffeeListEvent;
}

/// @nodoc
abstract class _$$_TypeSelectedCoffeeListEventCopyWith<$Res> {
  factory _$$_TypeSelectedCoffeeListEventCopyWith(
          _$_TypeSelectedCoffeeListEvent value,
          $Res Function(_$_TypeSelectedCoffeeListEvent) then) =
      __$$_TypeSelectedCoffeeListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CoffeeType type});
}

/// @nodoc
class __$$_TypeSelectedCoffeeListEventCopyWithImpl<$Res>
    extends _$CoffeeListEventCopyWithImpl<$Res, _$_TypeSelectedCoffeeListEvent>
    implements _$$_TypeSelectedCoffeeListEventCopyWith<$Res> {
  __$$_TypeSelectedCoffeeListEventCopyWithImpl(
      _$_TypeSelectedCoffeeListEvent _value,
      $Res Function(_$_TypeSelectedCoffeeListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_TypeSelectedCoffeeListEvent(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoffeeType,
    ));
  }
}

/// @nodoc

class _$_TypeSelectedCoffeeListEvent implements _TypeSelectedCoffeeListEvent {
  const _$_TypeSelectedCoffeeListEvent(this.type);

  @override
  final CoffeeType type;

  @override
  String toString() {
    return 'CoffeeListEvent.typeSelected(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeSelectedCoffeeListEvent &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeSelectedCoffeeListEventCopyWith<_$_TypeSelectedCoffeeListEvent>
      get copyWith => __$$_TypeSelectedCoffeeListEventCopyWithImpl<
          _$_TypeSelectedCoffeeListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(CoffeeType type) typeSelected,
  }) {
    return typeSelected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
  }) {
    return typeSelected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    required TResult orElse(),
  }) {
    if (typeSelected != null) {
      return typeSelected(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoadingCoffeeListEvent value) startLoading,
    required TResult Function(_TypeSelectedCoffeeListEvent value) typeSelected,
  }) {
    return typeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
  }) {
    return typeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    required TResult orElse(),
  }) {
    if (typeSelected != null) {
      return typeSelected(this);
    }
    return orElse();
  }
}

abstract class _TypeSelectedCoffeeListEvent implements CoffeeListEvent {
  const factory _TypeSelectedCoffeeListEvent(final CoffeeType type) =
      _$_TypeSelectedCoffeeListEvent;

  CoffeeType get type;
  @JsonKey(ignore: true)
  _$$_TypeSelectedCoffeeListEventCopyWith<_$_TypeSelectedCoffeeListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoffeeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyCoffeeListState value) empty,
    required TResult Function(_LoadingCoffeeListState value) loading,
    required TResult Function(_LoadedCoffeeListState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyCoffeeListState value)? empty,
    TResult? Function(_LoadingCoffeeListState value)? loading,
    TResult? Function(_LoadedCoffeeListState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyCoffeeListState value)? empty,
    TResult Function(_LoadingCoffeeListState value)? loading,
    TResult Function(_LoadedCoffeeListState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeListStateCopyWith<$Res> {
  factory $CoffeeListStateCopyWith(
          CoffeeListState value, $Res Function(CoffeeListState) then) =
      _$CoffeeListStateCopyWithImpl<$Res, CoffeeListState>;
}

/// @nodoc
class _$CoffeeListStateCopyWithImpl<$Res, $Val extends CoffeeListState>
    implements $CoffeeListStateCopyWith<$Res> {
  _$CoffeeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmptyCoffeeListStateCopyWith<$Res> {
  factory _$$_EmptyCoffeeListStateCopyWith(_$_EmptyCoffeeListState value,
          $Res Function(_$_EmptyCoffeeListState) then) =
      __$$_EmptyCoffeeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$_EmptyCoffeeListState>
    implements _$$_EmptyCoffeeListStateCopyWith<$Res> {
  __$$_EmptyCoffeeListStateCopyWithImpl(_$_EmptyCoffeeListState _value,
      $Res Function(_$_EmptyCoffeeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmptyCoffeeListState implements _EmptyCoffeeListState {
  const _$_EmptyCoffeeListState();

  @override
  String toString() {
    return 'CoffeeListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyCoffeeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
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
    required TResult Function(_EmptyCoffeeListState value) empty,
    required TResult Function(_LoadingCoffeeListState value) loading,
    required TResult Function(_LoadedCoffeeListState value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyCoffeeListState value)? empty,
    TResult? Function(_LoadingCoffeeListState value)? loading,
    TResult? Function(_LoadedCoffeeListState value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyCoffeeListState value)? empty,
    TResult Function(_LoadingCoffeeListState value)? loading,
    TResult Function(_LoadedCoffeeListState value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyCoffeeListState implements CoffeeListState {
  const factory _EmptyCoffeeListState() = _$_EmptyCoffeeListState;
}

/// @nodoc
abstract class _$$_LoadingCoffeeListStateCopyWith<$Res> {
  factory _$$_LoadingCoffeeListStateCopyWith(_$_LoadingCoffeeListState value,
          $Res Function(_$_LoadingCoffeeListState) then) =
      __$$_LoadingCoffeeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$_LoadingCoffeeListState>
    implements _$$_LoadingCoffeeListStateCopyWith<$Res> {
  __$$_LoadingCoffeeListStateCopyWithImpl(_$_LoadingCoffeeListState _value,
      $Res Function(_$_LoadingCoffeeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingCoffeeListState implements _LoadingCoffeeListState {
  const _$_LoadingCoffeeListState();

  @override
  String toString() {
    return 'CoffeeListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingCoffeeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
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
    required TResult Function(_EmptyCoffeeListState value) empty,
    required TResult Function(_LoadingCoffeeListState value) loading,
    required TResult Function(_LoadedCoffeeListState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyCoffeeListState value)? empty,
    TResult? Function(_LoadingCoffeeListState value)? loading,
    TResult? Function(_LoadedCoffeeListState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyCoffeeListState value)? empty,
    TResult Function(_LoadingCoffeeListState value)? loading,
    TResult Function(_LoadedCoffeeListState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCoffeeListState implements CoffeeListState {
  const factory _LoadingCoffeeListState() = _$_LoadingCoffeeListState;
}

/// @nodoc
abstract class _$$_LoadedCoffeeListStateCopyWith<$Res> {
  factory _$$_LoadedCoffeeListStateCopyWith(_$_LoadedCoffeeListState value,
          $Res Function(_$_LoadedCoffeeListState) then) =
      __$$_LoadedCoffeeListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coffee> coffees, List<Coffee> filteredCoffees});
}

/// @nodoc
class __$$_LoadedCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$_LoadedCoffeeListState>
    implements _$$_LoadedCoffeeListStateCopyWith<$Res> {
  __$$_LoadedCoffeeListStateCopyWithImpl(_$_LoadedCoffeeListState _value,
      $Res Function(_$_LoadedCoffeeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffees = null,
    Object? filteredCoffees = null,
  }) {
    return _then(_$_LoadedCoffeeListState(
      null == coffees
          ? _value.coffees
          : coffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      null == filteredCoffees
          ? _value.filteredCoffees
          : filteredCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
    ));
  }
}

/// @nodoc

class _$_LoadedCoffeeListState implements _LoadedCoffeeListState {
  const _$_LoadedCoffeeListState(this.coffees, this.filteredCoffees);

  @override
  final List<Coffee> coffees;
  @override
  final List<Coffee> filteredCoffees;

  @override
  String toString() {
    return 'CoffeeListState.loaded(coffees: $coffees, filteredCoffees: $filteredCoffees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCoffeeListState &&
            const DeepCollectionEquality().equals(other.coffees, coffees) &&
            const DeepCollectionEquality()
                .equals(other.filteredCoffees, filteredCoffees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coffees),
      const DeepCollectionEquality().hash(filteredCoffees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCoffeeListStateCopyWith<_$_LoadedCoffeeListState> get copyWith =>
      __$$_LoadedCoffeeListStateCopyWithImpl<_$_LoadedCoffeeListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees)
        loaded,
  }) {
    return loaded(coffees, filteredCoffees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
  }) {
    return loaded?.call(coffees, filteredCoffees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(coffees, filteredCoffees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyCoffeeListState value) empty,
    required TResult Function(_LoadingCoffeeListState value) loading,
    required TResult Function(_LoadedCoffeeListState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyCoffeeListState value)? empty,
    TResult? Function(_LoadingCoffeeListState value)? loading,
    TResult? Function(_LoadedCoffeeListState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyCoffeeListState value)? empty,
    TResult Function(_LoadingCoffeeListState value)? loading,
    TResult Function(_LoadedCoffeeListState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedCoffeeListState implements CoffeeListState {
  const factory _LoadedCoffeeListState(
          final List<Coffee> coffees, final List<Coffee> filteredCoffees) =
      _$_LoadedCoffeeListState;

  List<Coffee> get coffees;
  List<Coffee> get filteredCoffees;
  @JsonKey(ignore: true)
  _$$_LoadedCoffeeListStateCopyWith<_$_LoadedCoffeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
