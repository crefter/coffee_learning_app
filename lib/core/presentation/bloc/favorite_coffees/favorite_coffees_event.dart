part of 'favorite_coffees_bloc.dart';

@freezed
class FavoriteCoffeesEvent with _$FavoriteCoffeesEvent {
  const factory FavoriteCoffeesEvent.load() =
      _FavoriteCoffeesEventLoad;

  const factory FavoriteCoffeesEvent.update(Coffee coffee) =
      _FavoriteCoffeesEventUpdate;
}
