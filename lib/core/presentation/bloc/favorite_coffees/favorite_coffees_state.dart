part of 'favorite_coffees_bloc.dart';

@freezed
class FavoriteCoffeesState with _$FavoriteCoffeesState {
  const factory FavoriteCoffeesState.empty() = FavoriteCoffeesStateEmpty;

  const factory FavoriteCoffeesState.loading() = FavoriteCoffeesStateLoading;

  const factory FavoriteCoffeesState.loaded(List<Coffee> favoriteCoffees) =
      FavoriteCoffeesStateLoaded;

  const factory FavoriteCoffeesState.error(
    List<Coffee> favoriteCoffees,
    String message,
  ) = FavoriteCoffeesStateError;
}
