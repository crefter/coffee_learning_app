part of 'favorite_coffees_bloc.dart';

@freezed
class FavoriteCoffeesEvent with _$FavoriteCoffeesEvent {
  const factory FavoriteCoffeesEvent.load(Coffee? coffee) = _FavoriteCoffeesEventLoad;

  const factory FavoriteCoffeesEvent.update(Coffee coffee) =
      _FavoriteCoffeesEventUpdate;
}
