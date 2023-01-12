part of 'coffee_list_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CoffeeListState with _$CoffeeListState {
  const factory CoffeeListState.empty() = EmptyCoffeeListState;

  const factory CoffeeListState.loading() = LoadingCoffeeListState;

  const factory CoffeeListState.loaded(
    List<Coffee> coffees,
    List<Coffee> filteredCoffees,
  ) = LoadedCoffeeListState;

  const factory CoffeeListState.error(
    List<Coffee> coffees,
    List<Coffee> filteredCoffees,
    String error,
  ) = ErrorCoffeeListState;
}
