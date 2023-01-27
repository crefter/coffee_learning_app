part of 'coffee_list_bloc.dart';

@freezed
class CoffeeListEvent with _$CoffeeListEvent {
  const factory CoffeeListEvent.startLoading() = _StartLoadingCoffeeListEvent;

  const factory CoffeeListEvent.typeSelected(CoffeeType type) =
      _TypeSelectedCoffeeListEvent;

  const factory CoffeeListEvent.search(String query) = _CoffeeListEventSearch;
}
