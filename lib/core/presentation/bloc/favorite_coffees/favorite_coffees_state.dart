part of 'favorite_coffees_bloc.dart';

@freezed
class FavoriteCoffeesState with _$FavoriteCoffeesState {
  const factory FavoriteCoffeesState.empty() = _FavoriteCoffeesStateEmpty;

  const factory FavoriteCoffeesState.loading() = _FavoriteCoffeesStateLoading;

  const factory FavoriteCoffeesState.loaded(List<Coffee> favoriteCoffees) =
      _FavoriteCoffeesStateLoaded;

  const factory FavoriteCoffeesState.error(
    List<Coffee> favoriteCoffees,
    String message,
  ) = _FavoriteCoffeesStateError;
}
