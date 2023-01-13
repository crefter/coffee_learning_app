// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_coffees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteCoffeesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Coffee coffee) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Coffee coffee)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Coffee coffee)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteCoffeesEventLoad value) load,
    required TResult Function(_FavoriteCoffeesEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesEventLoad value)? load,
    TResult? Function(_FavoriteCoffeesEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesEventLoad value)? load,
    TResult Function(_FavoriteCoffeesEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCoffeesEventCopyWith<$Res> {
  factory $FavoriteCoffeesEventCopyWith(FavoriteCoffeesEvent value,
          $Res Function(FavoriteCoffeesEvent) then) =
      _$FavoriteCoffeesEventCopyWithImpl<$Res, FavoriteCoffeesEvent>;
}

/// @nodoc
class _$FavoriteCoffeesEventCopyWithImpl<$Res,
        $Val extends FavoriteCoffeesEvent>
    implements $FavoriteCoffeesEventCopyWith<$Res> {
  _$FavoriteCoffeesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoriteCoffeesEventLoadCopyWith<$Res> {
  factory _$$_FavoriteCoffeesEventLoadCopyWith(
          _$_FavoriteCoffeesEventLoad value,
          $Res Function(_$_FavoriteCoffeesEventLoad) then) =
      __$$_FavoriteCoffeesEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteCoffeesEventLoadCopyWithImpl<$Res>
    extends _$FavoriteCoffeesEventCopyWithImpl<$Res,
        _$_FavoriteCoffeesEventLoad>
    implements _$$_FavoriteCoffeesEventLoadCopyWith<$Res> {
  __$$_FavoriteCoffeesEventLoadCopyWithImpl(_$_FavoriteCoffeesEventLoad _value,
      $Res Function(_$_FavoriteCoffeesEventLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoriteCoffeesEventLoad implements _FavoriteCoffeesEventLoad {
  const _$_FavoriteCoffeesEventLoad();

  @override
  String toString() {
    return 'FavoriteCoffeesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteCoffeesEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Coffee coffee) update,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Coffee coffee)? update,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Coffee coffee)? update,
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
    required TResult Function(_FavoriteCoffeesEventLoad value) load,
    required TResult Function(_FavoriteCoffeesEventUpdate value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesEventLoad value)? load,
    TResult? Function(_FavoriteCoffeesEventUpdate value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesEventLoad value)? load,
    TResult Function(_FavoriteCoffeesEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCoffeesEventLoad implements FavoriteCoffeesEvent {
  const factory _FavoriteCoffeesEventLoad() = _$_FavoriteCoffeesEventLoad;
}

/// @nodoc
abstract class _$$_FavoriteCoffeesEventUpdateCopyWith<$Res> {
  factory _$$_FavoriteCoffeesEventUpdateCopyWith(
          _$_FavoriteCoffeesEventUpdate value,
          $Res Function(_$_FavoriteCoffeesEventUpdate) then) =
      __$$_FavoriteCoffeesEventUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Coffee coffee});

  $CoffeeCopyWith<$Res> get coffee;
}

/// @nodoc
class __$$_FavoriteCoffeesEventUpdateCopyWithImpl<$Res>
    extends _$FavoriteCoffeesEventCopyWithImpl<$Res,
        _$_FavoriteCoffeesEventUpdate>
    implements _$$_FavoriteCoffeesEventUpdateCopyWith<$Res> {
  __$$_FavoriteCoffeesEventUpdateCopyWithImpl(
      _$_FavoriteCoffeesEventUpdate _value,
      $Res Function(_$_FavoriteCoffeesEventUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_$_FavoriteCoffeesEventUpdate(
      null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeCopyWith<$Res> get coffee {
    return $CoffeeCopyWith<$Res>(_value.coffee, (value) {
      return _then(_value.copyWith(coffee: value));
    });
  }
}

/// @nodoc

class _$_FavoriteCoffeesEventUpdate implements _FavoriteCoffeesEventUpdate {
  const _$_FavoriteCoffeesEventUpdate(this.coffee);

  @override
  final Coffee coffee;

  @override
  String toString() {
    return 'FavoriteCoffeesEvent.update(coffee: $coffee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteCoffeesEventUpdate &&
            (identical(other.coffee, coffee) || other.coffee == coffee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteCoffeesEventUpdateCopyWith<_$_FavoriteCoffeesEventUpdate>
      get copyWith => __$$_FavoriteCoffeesEventUpdateCopyWithImpl<
          _$_FavoriteCoffeesEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Coffee coffee) update,
  }) {
    return update(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Coffee coffee)? update,
  }) {
    return update?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Coffee coffee)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(coffee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteCoffeesEventLoad value) load,
    required TResult Function(_FavoriteCoffeesEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesEventLoad value)? load,
    TResult? Function(_FavoriteCoffeesEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesEventLoad value)? load,
    TResult Function(_FavoriteCoffeesEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCoffeesEventUpdate implements FavoriteCoffeesEvent {
  const factory _FavoriteCoffeesEventUpdate(final Coffee coffee) =
      _$_FavoriteCoffeesEventUpdate;

  Coffee get coffee;
  @JsonKey(ignore: true)
  _$$_FavoriteCoffeesEventUpdateCopyWith<_$_FavoriteCoffeesEventUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteCoffeesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
    required TResult Function(List<Coffee> favoriteCoffees, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
    TResult? Function(List<Coffee> favoriteCoffees, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    TResult Function(List<Coffee> favoriteCoffees, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(FavoriteCoffeesStateLoading value) loading,
    required TResult Function(FavoriteCoffeesStateLoaded value) loaded,
    required TResult Function(FavoriteCoffeesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult? Function(FavoriteCoffeesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(FavoriteCoffeesStateLoading value)? loading,
    TResult Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult Function(FavoriteCoffeesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCoffeesStateCopyWith<$Res> {
  factory $FavoriteCoffeesStateCopyWith(FavoriteCoffeesState value,
          $Res Function(FavoriteCoffeesState) then) =
      _$FavoriteCoffeesStateCopyWithImpl<$Res, FavoriteCoffeesState>;
}

/// @nodoc
class _$FavoriteCoffeesStateCopyWithImpl<$Res,
        $Val extends FavoriteCoffeesState>
    implements $FavoriteCoffeesStateCopyWith<$Res> {
  _$FavoriteCoffeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteCoffeesStateEmptyCopyWith<$Res> {
  factory _$$FavoriteCoffeesStateEmptyCopyWith(
          _$FavoriteCoffeesStateEmpty value,
          $Res Function(_$FavoriteCoffeesStateEmpty) then) =
      __$$FavoriteCoffeesStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteCoffeesStateEmptyCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$FavoriteCoffeesStateEmpty>
    implements _$$FavoriteCoffeesStateEmptyCopyWith<$Res> {
  __$$FavoriteCoffeesStateEmptyCopyWithImpl(_$FavoriteCoffeesStateEmpty _value,
      $Res Function(_$FavoriteCoffeesStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteCoffeesStateEmpty implements FavoriteCoffeesStateEmpty {
  const _$FavoriteCoffeesStateEmpty();

  @override
  String toString() {
    return 'FavoriteCoffeesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCoffeesStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
    required TResult Function(List<Coffee> favoriteCoffees, String message)
        error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
    TResult? Function(List<Coffee> favoriteCoffees, String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    TResult Function(List<Coffee> favoriteCoffees, String message)? error,
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
    required TResult Function(FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(FavoriteCoffeesStateLoading value) loading,
    required TResult Function(FavoriteCoffeesStateLoaded value) loaded,
    required TResult Function(FavoriteCoffeesStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult? Function(FavoriteCoffeesStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(FavoriteCoffeesStateLoading value)? loading,
    TResult Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult Function(FavoriteCoffeesStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class FavoriteCoffeesStateEmpty implements FavoriteCoffeesState {
  const factory FavoriteCoffeesStateEmpty() = _$FavoriteCoffeesStateEmpty;
}

/// @nodoc
abstract class _$$FavoriteCoffeesStateLoadingCopyWith<$Res> {
  factory _$$FavoriteCoffeesStateLoadingCopyWith(
          _$FavoriteCoffeesStateLoading value,
          $Res Function(_$FavoriteCoffeesStateLoading) then) =
      __$$FavoriteCoffeesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteCoffeesStateLoadingCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$FavoriteCoffeesStateLoading>
    implements _$$FavoriteCoffeesStateLoadingCopyWith<$Res> {
  __$$FavoriteCoffeesStateLoadingCopyWithImpl(
      _$FavoriteCoffeesStateLoading _value,
      $Res Function(_$FavoriteCoffeesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteCoffeesStateLoading implements FavoriteCoffeesStateLoading {
  const _$FavoriteCoffeesStateLoading();

  @override
  String toString() {
    return 'FavoriteCoffeesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCoffeesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
    required TResult Function(List<Coffee> favoriteCoffees, String message)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
    TResult? Function(List<Coffee> favoriteCoffees, String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    TResult Function(List<Coffee> favoriteCoffees, String message)? error,
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
    required TResult Function(FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(FavoriteCoffeesStateLoading value) loading,
    required TResult Function(FavoriteCoffeesStateLoaded value) loaded,
    required TResult Function(FavoriteCoffeesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult? Function(FavoriteCoffeesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(FavoriteCoffeesStateLoading value)? loading,
    TResult Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult Function(FavoriteCoffeesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoriteCoffeesStateLoading implements FavoriteCoffeesState {
  const factory FavoriteCoffeesStateLoading() = _$FavoriteCoffeesStateLoading;
}

/// @nodoc
abstract class _$$FavoriteCoffeesStateLoadedCopyWith<$Res> {
  factory _$$FavoriteCoffeesStateLoadedCopyWith(
          _$FavoriteCoffeesStateLoaded value,
          $Res Function(_$FavoriteCoffeesStateLoaded) then) =
      __$$FavoriteCoffeesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coffee> favoriteCoffees});
}

/// @nodoc
class __$$FavoriteCoffeesStateLoadedCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$FavoriteCoffeesStateLoaded>
    implements _$$FavoriteCoffeesStateLoadedCopyWith<$Res> {
  __$$FavoriteCoffeesStateLoadedCopyWithImpl(
      _$FavoriteCoffeesStateLoaded _value,
      $Res Function(_$FavoriteCoffeesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCoffees = null,
  }) {
    return _then(_$FavoriteCoffeesStateLoaded(
      null == favoriteCoffees
          ? _value._favoriteCoffees
          : favoriteCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
    ));
  }
}

/// @nodoc

class _$FavoriteCoffeesStateLoaded implements FavoriteCoffeesStateLoaded {
  const _$FavoriteCoffeesStateLoaded(final List<Coffee> favoriteCoffees)
      : _favoriteCoffees = favoriteCoffees;

  final List<Coffee> _favoriteCoffees;
  @override
  List<Coffee> get favoriteCoffees {
    if (_favoriteCoffees is EqualUnmodifiableListView) return _favoriteCoffees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteCoffees);
  }

  @override
  String toString() {
    return 'FavoriteCoffeesState.loaded(favoriteCoffees: $favoriteCoffees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCoffeesStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._favoriteCoffees, _favoriteCoffees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteCoffees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteCoffeesStateLoadedCopyWith<_$FavoriteCoffeesStateLoaded>
      get copyWith => __$$FavoriteCoffeesStateLoadedCopyWithImpl<
          _$FavoriteCoffeesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
    required TResult Function(List<Coffee> favoriteCoffees, String message)
        error,
  }) {
    return loaded(favoriteCoffees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
    TResult? Function(List<Coffee> favoriteCoffees, String message)? error,
  }) {
    return loaded?.call(favoriteCoffees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    TResult Function(List<Coffee> favoriteCoffees, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favoriteCoffees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(FavoriteCoffeesStateLoading value) loading,
    required TResult Function(FavoriteCoffeesStateLoaded value) loaded,
    required TResult Function(FavoriteCoffeesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult? Function(FavoriteCoffeesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(FavoriteCoffeesStateLoading value)? loading,
    TResult Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult Function(FavoriteCoffeesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoriteCoffeesStateLoaded implements FavoriteCoffeesState {
  const factory FavoriteCoffeesStateLoaded(final List<Coffee> favoriteCoffees) =
      _$FavoriteCoffeesStateLoaded;

  List<Coffee> get favoriteCoffees;
  @JsonKey(ignore: true)
  _$$FavoriteCoffeesStateLoadedCopyWith<_$FavoriteCoffeesStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteCoffeesStateErrorCopyWith<$Res> {
  factory _$$FavoriteCoffeesStateErrorCopyWith(
          _$FavoriteCoffeesStateError value,
          $Res Function(_$FavoriteCoffeesStateError) then) =
      __$$FavoriteCoffeesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coffee> favoriteCoffees, String message});
}

/// @nodoc
class __$$FavoriteCoffeesStateErrorCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$FavoriteCoffeesStateError>
    implements _$$FavoriteCoffeesStateErrorCopyWith<$Res> {
  __$$FavoriteCoffeesStateErrorCopyWithImpl(_$FavoriteCoffeesStateError _value,
      $Res Function(_$FavoriteCoffeesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCoffees = null,
    Object? message = null,
  }) {
    return _then(_$FavoriteCoffeesStateError(
      null == favoriteCoffees
          ? _value._favoriteCoffees
          : favoriteCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteCoffeesStateError implements FavoriteCoffeesStateError {
  const _$FavoriteCoffeesStateError(
      final List<Coffee> favoriteCoffees, this.message)
      : _favoriteCoffees = favoriteCoffees;

  final List<Coffee> _favoriteCoffees;
  @override
  List<Coffee> get favoriteCoffees {
    if (_favoriteCoffees is EqualUnmodifiableListView) return _favoriteCoffees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteCoffees);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'FavoriteCoffeesState.error(favoriteCoffees: $favoriteCoffees, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCoffeesStateError &&
            const DeepCollectionEquality()
                .equals(other._favoriteCoffees, _favoriteCoffees) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favoriteCoffees), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteCoffeesStateErrorCopyWith<_$FavoriteCoffeesStateError>
      get copyWith => __$$FavoriteCoffeesStateErrorCopyWithImpl<
          _$FavoriteCoffeesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
    required TResult Function(List<Coffee> favoriteCoffees, String message)
        error,
  }) {
    return error(favoriteCoffees, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
    TResult? Function(List<Coffee> favoriteCoffees, String message)? error,
  }) {
    return error?.call(favoriteCoffees, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    TResult Function(List<Coffee> favoriteCoffees, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(favoriteCoffees, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(FavoriteCoffeesStateLoading value) loading,
    required TResult Function(FavoriteCoffeesStateLoaded value) loaded,
    required TResult Function(FavoriteCoffeesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult? Function(FavoriteCoffeesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(FavoriteCoffeesStateLoading value)? loading,
    TResult Function(FavoriteCoffeesStateLoaded value)? loaded,
    TResult Function(FavoriteCoffeesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteCoffeesStateError implements FavoriteCoffeesState {
  const factory FavoriteCoffeesStateError(
          final List<Coffee> favoriteCoffees, final String message) =
      _$FavoriteCoffeesStateError;

  List<Coffee> get favoriteCoffees;
  String get message;
  @JsonKey(ignore: true)
  _$$FavoriteCoffeesStateErrorCopyWith<_$FavoriteCoffeesStateError>
      get copyWith => throw _privateConstructorUsedError;
}
