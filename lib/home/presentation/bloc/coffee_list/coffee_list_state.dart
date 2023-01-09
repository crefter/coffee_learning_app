part of 'coffee_list_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CoffeeListState with _$CoffeeListState {
  const factory CoffeeListState.empty() = _EmptyCoffeeListState;

  const factory CoffeeListState.loading() = _LoadingCoffeeListState;

  const factory CoffeeListState.loaded(
    List<Coffee> coffees,
    List<Coffee> filteredCoffees,
  ) = _LoadedCoffeeListState;
}
