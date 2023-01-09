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
  Coffee? get coffee => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coffee? coffee) load,
    required TResult Function(Coffee coffee) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coffee? coffee)? load,
    TResult? Function(Coffee coffee)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coffee? coffee)? load,
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

  @JsonKey(ignore: true)
  $FavoriteCoffeesEventCopyWith<FavoriteCoffeesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCoffeesEventCopyWith<$Res> {
  factory $FavoriteCoffeesEventCopyWith(FavoriteCoffeesEvent value,
          $Res Function(FavoriteCoffeesEvent) then) =
      _$FavoriteCoffeesEventCopyWithImpl<$Res, FavoriteCoffeesEvent>;
  @useResult
  $Res call({Coffee coffee});

  $CoffeeCopyWith<$Res>? get coffee;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_value.copyWith(
      coffee: null == coffee
          ? _value.coffee!
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeCopyWith<$Res>? get coffee {
    if (_value.coffee == null) {
      return null;
    }

    return $CoffeeCopyWith<$Res>(_value.coffee!, (value) {
      return _then(_value.copyWith(coffee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteCoffeesEventLoadCopyWith<$Res>
    implements $FavoriteCoffeesEventCopyWith<$Res> {
  factory _$$_FavoriteCoffeesEventLoadCopyWith(
          _$_FavoriteCoffeesEventLoad value,
          $Res Function(_$_FavoriteCoffeesEventLoad) then) =
      __$$_FavoriteCoffeesEventLoadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coffee? coffee});

  @override
  $CoffeeCopyWith<$Res>? get coffee;
}

/// @nodoc
class __$$_FavoriteCoffeesEventLoadCopyWithImpl<$Res>
    extends _$FavoriteCoffeesEventCopyWithImpl<$Res,
        _$_FavoriteCoffeesEventLoad>
    implements _$$_FavoriteCoffeesEventLoadCopyWith<$Res> {
  __$$_FavoriteCoffeesEventLoadCopyWithImpl(_$_FavoriteCoffeesEventLoad _value,
      $Res Function(_$_FavoriteCoffeesEventLoad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = freezed,
  }) {
    return _then(_$_FavoriteCoffeesEventLoad(
      freezed == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee?,
    ));
  }
}

/// @nodoc

class _$_FavoriteCoffeesEventLoad implements _FavoriteCoffeesEventLoad {
  const _$_FavoriteCoffeesEventLoad(this.coffee);

  @override
  final Coffee? coffee;

  @override
  String toString() {
    return 'FavoriteCoffeesEvent.load(coffee: $coffee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteCoffeesEventLoad &&
            (identical(other.coffee, coffee) || other.coffee == coffee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteCoffeesEventLoadCopyWith<_$_FavoriteCoffeesEventLoad>
      get copyWith => __$$_FavoriteCoffeesEventLoadCopyWithImpl<
          _$_FavoriteCoffeesEventLoad>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coffee? coffee) load,
    required TResult Function(Coffee coffee) update,
  }) {
    return load(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coffee? coffee)? load,
    TResult? Function(Coffee coffee)? update,
  }) {
    return load?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coffee? coffee)? load,
    TResult Function(Coffee coffee)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(coffee);
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
  const factory _FavoriteCoffeesEventLoad(final Coffee? coffee) =
      _$_FavoriteCoffeesEventLoad;

  @override
  Coffee? get coffee;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteCoffeesEventLoadCopyWith<_$_FavoriteCoffeesEventLoad>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoriteCoffeesEventUpdateCopyWith<$Res>
    implements $FavoriteCoffeesEventCopyWith<$Res> {
  factory _$$_FavoriteCoffeesEventUpdateCopyWith(
          _$_FavoriteCoffeesEventUpdate value,
          $Res Function(_$_FavoriteCoffeesEventUpdate) then) =
      __$$_FavoriteCoffeesEventUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coffee coffee});

  @override
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
    required TResult Function(Coffee? coffee) load,
    required TResult Function(Coffee coffee) update,
  }) {
    return update(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coffee? coffee)? load,
    TResult? Function(Coffee coffee)? update,
  }) {
    return update?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coffee? coffee)? load,
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

  @override
  Coffee get coffee;
  @override
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(_FavoriteCoffeesStateLoading value) loading,
    required TResult Function(_FavoriteCoffeesStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(_FavoriteCoffeesStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult Function(_FavoriteCoffeesStateLoaded value)? loaded,
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
abstract class _$$_FavoriteCoffeesStateEmptyCopyWith<$Res> {
  factory _$$_FavoriteCoffeesStateEmptyCopyWith(
          _$_FavoriteCoffeesStateEmpty value,
          $Res Function(_$_FavoriteCoffeesStateEmpty) then) =
      __$$_FavoriteCoffeesStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteCoffeesStateEmptyCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$_FavoriteCoffeesStateEmpty>
    implements _$$_FavoriteCoffeesStateEmptyCopyWith<$Res> {
  __$$_FavoriteCoffeesStateEmptyCopyWithImpl(
      _$_FavoriteCoffeesStateEmpty _value,
      $Res Function(_$_FavoriteCoffeesStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoriteCoffeesStateEmpty implements _FavoriteCoffeesStateEmpty {
  const _$_FavoriteCoffeesStateEmpty();

  @override
  String toString() {
    return 'FavoriteCoffeesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteCoffeesStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
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
    required TResult Function(_FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(_FavoriteCoffeesStateLoading value) loading,
    required TResult Function(_FavoriteCoffeesStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(_FavoriteCoffeesStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult Function(_FavoriteCoffeesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCoffeesStateEmpty implements FavoriteCoffeesState {
  const factory _FavoriteCoffeesStateEmpty() = _$_FavoriteCoffeesStateEmpty;
}

/// @nodoc
abstract class _$$_FavoriteCoffeesStateLoadingCopyWith<$Res> {
  factory _$$_FavoriteCoffeesStateLoadingCopyWith(
          _$_FavoriteCoffeesStateLoading value,
          $Res Function(_$_FavoriteCoffeesStateLoading) then) =
      __$$_FavoriteCoffeesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteCoffeesStateLoadingCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$_FavoriteCoffeesStateLoading>
    implements _$$_FavoriteCoffeesStateLoadingCopyWith<$Res> {
  __$$_FavoriteCoffeesStateLoadingCopyWithImpl(
      _$_FavoriteCoffeesStateLoading _value,
      $Res Function(_$_FavoriteCoffeesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoriteCoffeesStateLoading implements _FavoriteCoffeesStateLoading {
  const _$_FavoriteCoffeesStateLoading();

  @override
  String toString() {
    return 'FavoriteCoffeesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteCoffeesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
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
    required TResult Function(_FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(_FavoriteCoffeesStateLoading value) loading,
    required TResult Function(_FavoriteCoffeesStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(_FavoriteCoffeesStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult Function(_FavoriteCoffeesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCoffeesStateLoading implements FavoriteCoffeesState {
  const factory _FavoriteCoffeesStateLoading() = _$_FavoriteCoffeesStateLoading;
}

/// @nodoc
abstract class _$$_FavoriteCoffeesStateLoadedCopyWith<$Res> {
  factory _$$_FavoriteCoffeesStateLoadedCopyWith(
          _$_FavoriteCoffeesStateLoaded value,
          $Res Function(_$_FavoriteCoffeesStateLoaded) then) =
      __$$_FavoriteCoffeesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coffee> favoriteCoffees});
}

/// @nodoc
class __$$_FavoriteCoffeesStateLoadedCopyWithImpl<$Res>
    extends _$FavoriteCoffeesStateCopyWithImpl<$Res,
        _$_FavoriteCoffeesStateLoaded>
    implements _$$_FavoriteCoffeesStateLoadedCopyWith<$Res> {
  __$$_FavoriteCoffeesStateLoadedCopyWithImpl(
      _$_FavoriteCoffeesStateLoaded _value,
      $Res Function(_$_FavoriteCoffeesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCoffees = null,
  }) {
    return _then(_$_FavoriteCoffeesStateLoaded(
      null == favoriteCoffees
          ? _value._favoriteCoffees
          : favoriteCoffees // ignore: cast_nullable_to_non_nullable
              as List<Coffee>,
    ));
  }
}

/// @nodoc

class _$_FavoriteCoffeesStateLoaded implements _FavoriteCoffeesStateLoaded {
  const _$_FavoriteCoffeesStateLoaded(final List<Coffee> favoriteCoffees)
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
            other is _$_FavoriteCoffeesStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._favoriteCoffees, _favoriteCoffees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteCoffees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteCoffeesStateLoadedCopyWith<_$_FavoriteCoffeesStateLoaded>
      get copyWith => __$$_FavoriteCoffeesStateLoadedCopyWithImpl<
          _$_FavoriteCoffeesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<Coffee> favoriteCoffees) loaded,
  }) {
    return loaded(favoriteCoffees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<Coffee> favoriteCoffees)? loaded,
  }) {
    return loaded?.call(favoriteCoffees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<Coffee> favoriteCoffees)? loaded,
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
    required TResult Function(_FavoriteCoffeesStateEmpty value) empty,
    required TResult Function(_FavoriteCoffeesStateLoading value) loading,
    required TResult Function(_FavoriteCoffeesStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult? Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult? Function(_FavoriteCoffeesStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteCoffeesStateEmpty value)? empty,
    TResult Function(_FavoriteCoffeesStateLoading value)? loading,
    TResult Function(_FavoriteCoffeesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCoffeesStateLoaded implements FavoriteCoffeesState {
  const factory _FavoriteCoffeesStateLoaded(
      final List<Coffee> favoriteCoffees) = _$_FavoriteCoffeesStateLoaded;

  List<Coffee> get favoriteCoffees;
  @JsonKey(ignore: true)
  _$$_FavoriteCoffeesStateLoadedCopyWith<_$_FavoriteCoffeesStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}
