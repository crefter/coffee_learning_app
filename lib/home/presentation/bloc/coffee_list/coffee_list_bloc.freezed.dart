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
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
    TResult? Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoadingCoffeeListEvent value) startLoading,
    required TResult Function(_TypeSelectedCoffeeListEvent value) typeSelected,
    required TResult Function(_CoffeeListEventSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult? Function(_CoffeeListEventSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult Function(_CoffeeListEventSearch value)? search,
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
    required TResult Function(String query) search,
  }) {
    return startLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
    TResult? Function(String query)? search,
  }) {
    return startLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    TResult Function(String query)? search,
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
    required TResult Function(_CoffeeListEventSearch value) search,
  }) {
    return startLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult? Function(_CoffeeListEventSearch value)? search,
  }) {
    return startLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult Function(_CoffeeListEventSearch value)? search,
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
    required TResult Function(String query) search,
  }) {
    return typeSelected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
    TResult? Function(String query)? search,
  }) {
    return typeSelected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    TResult Function(String query)? search,
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
    required TResult Function(_CoffeeListEventSearch value) search,
  }) {
    return typeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult? Function(_CoffeeListEventSearch value)? search,
  }) {
    return typeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult Function(_CoffeeListEventSearch value)? search,
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
abstract class _$$_CoffeeListEventSearchCopyWith<$Res> {
  factory _$$_CoffeeListEventSearchCopyWith(_$_CoffeeListEventSearch value,
          $Res Function(_$_CoffeeListEventSearch) then) =
      __$$_CoffeeListEventSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_CoffeeListEventSearchCopyWithImpl<$Res>
    extends _$CoffeeListEventCopyWithImpl<$Res, _$_CoffeeListEventSearch>
    implements _$$_CoffeeListEventSearchCopyWith<$Res> {
  __$$_CoffeeListEventSearchCopyWithImpl(_$_CoffeeListEventSearch _value,
      $Res Function(_$_CoffeeListEventSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_CoffeeListEventSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CoffeeListEventSearch implements _CoffeeListEventSearch {
  const _$_CoffeeListEventSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CoffeeListEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeListEventSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeListEventSearchCopyWith<_$_CoffeeListEventSearch> get copyWith =>
      __$$_CoffeeListEventSearchCopyWithImpl<_$_CoffeeListEventSearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startLoading,
    required TResult Function(CoffeeType type) typeSelected,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startLoading,
    TResult? Function(CoffeeType type)? typeSelected,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startLoading,
    TResult Function(CoffeeType type)? typeSelected,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartLoadingCoffeeListEvent value) startLoading,
    required TResult Function(_TypeSelectedCoffeeListEvent value) typeSelected,
    required TResult Function(_CoffeeListEventSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult? Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult? Function(_CoffeeListEventSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartLoadingCoffeeListEvent value)? startLoading,
    TResult Function(_TypeSelectedCoffeeListEvent value)? typeSelected,
    TResult Function(_CoffeeListEventSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _CoffeeListEventSearch implements CoffeeListEvent {
  const factory _CoffeeListEventSearch(final String query) =
      _$_CoffeeListEventSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_CoffeeListEventSearchCopyWith<_$_CoffeeListEventSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoffeeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> coffees,
            List<Coffee> filteredCoffees, List<Coffee>? queryFilteredCoffees)
        loaded,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult? Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoffeeListState value) empty,
    required TResult Function(LoadingCoffeeListState value) loading,
    required TResult Function(LoadedCoffeeListState value) loaded,
    required TResult Function(ErrorCoffeeListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyCoffeeListState value)? empty,
    TResult? Function(LoadingCoffeeListState value)? loading,
    TResult? Function(LoadedCoffeeListState value)? loaded,
    TResult? Function(ErrorCoffeeListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoffeeListState value)? empty,
    TResult Function(LoadingCoffeeListState value)? loading,
    TResult Function(LoadedCoffeeListState value)? loaded,
    TResult Function(ErrorCoffeeListState value)? error,
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
abstract class _$$EmptyCoffeeListStateCopyWith<$Res> {
  factory _$$EmptyCoffeeListStateCopyWith(_$EmptyCoffeeListState value,
          $Res Function(_$EmptyCoffeeListState) then) =
      __$$EmptyCoffeeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$EmptyCoffeeListState>
    implements _$$EmptyCoffeeListStateCopyWith<$Res> {
  __$$EmptyCoffeeListStateCopyWithImpl(_$EmptyCoffeeListState _value,
      $Res Function(_$EmptyCoffeeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyCoffeeListState implements EmptyCoffeeListState {
  const _$EmptyCoffeeListState();

  @override
  String toString() {
    return 'CoffeeListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyCoffeeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> coffees,
            List<Coffee> filteredCoffees, List<Coffee>? queryFilteredCoffees)
        loaded,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)
        error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult? Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
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
    required TResult Function(EmptyCoffeeListState value) empty,
    required TResult Function(LoadingCoffeeListState value) loading,
    required TResult Function(LoadedCoffeeListState value) loaded,
    required TResult Function(ErrorCoffeeListState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyCoffeeListState value)? empty,
    TResult? Function(LoadingCoffeeListState value)? loading,
    TResult? Function(LoadedCoffeeListState value)? loaded,
    TResult? Function(ErrorCoffeeListState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoffeeListState value)? empty,
    TResult Function(LoadingCoffeeListState value)? loading,
    TResult Function(LoadedCoffeeListState value)? loaded,
    TResult Function(ErrorCoffeeListState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyCoffeeListState implements CoffeeListState {
  const factory EmptyCoffeeListState() = _$EmptyCoffeeListState;
}

/// @nodoc
abstract class _$$LoadingCoffeeListStateCopyWith<$Res> {
  factory _$$LoadingCoffeeListStateCopyWith(_$LoadingCoffeeListState value,
          $Res Function(_$LoadingCoffeeListState) then) =
      __$$LoadingCoffeeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$LoadingCoffeeListState>
    implements _$$LoadingCoffeeListStateCopyWith<$Res> {
  __$$LoadingCoffeeListStateCopyWithImpl(_$LoadingCoffeeListState _value,
      $Res Function(_$LoadingCoffeeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCoffeeListState implements LoadingCoffeeListState {
  const _$LoadingCoffeeListState();

  @override
  String toString() {
    return 'CoffeeListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCoffeeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> coffees,
            List<Coffee> filteredCoffees, List<Coffee>? queryFilteredCoffees)
        loaded,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult? Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
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
    required TResult Function(EmptyCoffeeListState value) empty,
    required TResult Function(LoadingCoffeeListState value) loading,
    required TResult Function(LoadedCoffeeListState value) loaded,
    required TResult Function(ErrorCoffeeListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyCoffeeListState value)? empty,
    TResult? Function(LoadingCoffeeListState value)? loading,
    TResult? Function(LoadedCoffeeListState value)? loaded,
    TResult? Function(ErrorCoffeeListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoffeeListState value)? empty,
    TResult Function(LoadingCoffeeListState value)? loading,
    TResult Function(LoadedCoffeeListState value)? loaded,
    TResult Function(ErrorCoffeeListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCoffeeListState implements CoffeeListState {
  const factory LoadingCoffeeListState() = _$LoadingCoffeeListState;
}

/// @nodoc
abstract class _$$LoadedCoffeeListStateCopyWith<$Res> {
  factory _$$LoadedCoffeeListStateCopyWith(_$LoadedCoffeeListState value,
          $Res Function(_$LoadedCoffeeListState) then) =
      __$$LoadedCoffeeListStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Coffee> coffees,
      List<Coffee> filteredCoffees,
      List<Coffee>? queryFilteredCoffees});
}

/// @nodoc
class __$$LoadedCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$LoadedCoffeeListState>
    implements _$$LoadedCoffeeListStateCopyWith<$Res> {
  __$$LoadedCoffeeListStateCopyWithImpl(_$LoadedCoffeeListState _value,
      $Res Function(_$LoadedCoffeeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffees = null,
    Object? filteredCoffees = null,
    Object? queryFilteredCoffees = freezed,
  }) {
    return _then(_$LoadedCoffeeListState(
      null == coffees
          ? _value.coffees
          : coffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      null == filteredCoffees
          ? _value.filteredCoffees
          : filteredCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      freezed == queryFilteredCoffees
          ? _value.queryFilteredCoffees
          : queryFilteredCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>?,
    ));
  }
}

/// @nodoc

class _$LoadedCoffeeListState implements LoadedCoffeeListState {
  const _$LoadedCoffeeListState(
      this.coffees, this.filteredCoffees, this.queryFilteredCoffees);

  @override
  final List<Coffee> coffees;
  @override
  final List<Coffee> filteredCoffees;
  @override
  final List<Coffee>? queryFilteredCoffees;

  @override
  String toString() {
    return 'CoffeeListState.loaded(coffees: $coffees, filteredCoffees: $filteredCoffees, queryFilteredCoffees: $queryFilteredCoffees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCoffeeListState &&
            const DeepCollectionEquality().equals(other.coffees, coffees) &&
            const DeepCollectionEquality()
                .equals(other.filteredCoffees, filteredCoffees) &&
            const DeepCollectionEquality()
                .equals(other.queryFilteredCoffees, queryFilteredCoffees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coffees),
      const DeepCollectionEquality().hash(filteredCoffees),
      const DeepCollectionEquality().hash(queryFilteredCoffees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCoffeeListStateCopyWith<_$LoadedCoffeeListState> get copyWith =>
      __$$LoadedCoffeeListStateCopyWithImpl<_$LoadedCoffeeListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> coffees,
            List<Coffee> filteredCoffees, List<Coffee>? queryFilteredCoffees)
        loaded,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)
        error,
  }) {
    return loaded(coffees, filteredCoffees, queryFilteredCoffees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult? Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
  }) {
    return loaded?.call(coffees, filteredCoffees, queryFilteredCoffees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(coffees, filteredCoffees, queryFilteredCoffees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoffeeListState value) empty,
    required TResult Function(LoadingCoffeeListState value) loading,
    required TResult Function(LoadedCoffeeListState value) loaded,
    required TResult Function(ErrorCoffeeListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyCoffeeListState value)? empty,
    TResult? Function(LoadingCoffeeListState value)? loading,
    TResult? Function(LoadedCoffeeListState value)? loaded,
    TResult? Function(ErrorCoffeeListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoffeeListState value)? empty,
    TResult Function(LoadingCoffeeListState value)? loading,
    TResult Function(LoadedCoffeeListState value)? loaded,
    TResult Function(ErrorCoffeeListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCoffeeListState implements CoffeeListState {
  const factory LoadedCoffeeListState(
      final List<Coffee> coffees,
      final List<Coffee> filteredCoffees,
      final List<Coffee>? queryFilteredCoffees) = _$LoadedCoffeeListState;

  List<Coffee> get coffees;
  List<Coffee> get filteredCoffees;
  List<Coffee>? get queryFilteredCoffees;
  @JsonKey(ignore: true)
  _$$LoadedCoffeeListStateCopyWith<_$LoadedCoffeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCoffeeListStateCopyWith<$Res> {
  factory _$$ErrorCoffeeListStateCopyWith(_$ErrorCoffeeListState value,
          $Res Function(_$ErrorCoffeeListState) then) =
      __$$ErrorCoffeeListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coffee> coffees, List<Coffee> filteredCoffees, String error});
}

/// @nodoc
class __$$ErrorCoffeeListStateCopyWithImpl<$Res>
    extends _$CoffeeListStateCopyWithImpl<$Res, _$ErrorCoffeeListState>
    implements _$$ErrorCoffeeListStateCopyWith<$Res> {
  __$$ErrorCoffeeListStateCopyWithImpl(_$ErrorCoffeeListState _value,
      $Res Function(_$ErrorCoffeeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffees = null,
    Object? filteredCoffees = null,
    Object? error = null,
  }) {
    return _then(_$ErrorCoffeeListState(
      null == coffees
          ? _value.coffees
          : coffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      null == filteredCoffees
          ? _value.filteredCoffees
          : filteredCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCoffeeListState implements ErrorCoffeeListState {
  const _$ErrorCoffeeListState(this.coffees, this.filteredCoffees, this.error);

  @override
  final List<Coffee> coffees;
  @override
  final List<Coffee> filteredCoffees;
  @override
  final String error;

  @override
  String toString() {
    return 'CoffeeListState.error(coffees: $coffees, filteredCoffees: $filteredCoffees, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCoffeeListState &&
            const DeepCollectionEquality().equals(other.coffees, coffees) &&
            const DeepCollectionEquality()
                .equals(other.filteredCoffees, filteredCoffees) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coffees),
      const DeepCollectionEquality().hash(filteredCoffees),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCoffeeListStateCopyWith<_$ErrorCoffeeListState> get copyWith =>
      __$$ErrorCoffeeListStateCopyWithImpl<_$ErrorCoffeeListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> coffees,
            List<Coffee> filteredCoffees, List<Coffee>? queryFilteredCoffees)
        loaded,
    required TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)
        error,
  }) {
    return error(coffees, filteredCoffees, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult? Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
  }) {
    return error?.call(coffees, filteredCoffees, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> coffees, List<Coffee> filteredCoffees,
            List<Coffee>? queryFilteredCoffees)?
        loaded,
    TResult Function(
            List<Coffee> coffees, List<Coffee> filteredCoffees, String error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(coffees, filteredCoffees, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCoffeeListState value) empty,
    required TResult Function(LoadingCoffeeListState value) loading,
    required TResult Function(LoadedCoffeeListState value) loaded,
    required TResult Function(ErrorCoffeeListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyCoffeeListState value)? empty,
    TResult? Function(LoadingCoffeeListState value)? loading,
    TResult? Function(LoadedCoffeeListState value)? loaded,
    TResult? Function(ErrorCoffeeListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCoffeeListState value)? empty,
    TResult Function(LoadingCoffeeListState value)? loading,
    TResult Function(LoadedCoffeeListState value)? loaded,
    TResult Function(ErrorCoffeeListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCoffeeListState implements CoffeeListState {
  const factory ErrorCoffeeListState(
      final List<Coffee> coffees,
      final List<Coffee> filteredCoffees,
      final String error) = _$ErrorCoffeeListState;

  List<Coffee> get coffees;
  List<Coffee> get filteredCoffees;
  String get error;
  @JsonKey(ignore: true)
  _$$ErrorCoffeeListStateCopyWith<_$ErrorCoffeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
