import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';

part 'favorite_coffees_event.dart';

part 'favorite_coffees_state.dart';

part 'favorite_coffees_bloc.freezed.dart';

class FavoriteCoffeesBloc
    extends Bloc<FavoriteCoffeesEvent, FavoriteCoffeesState> {
  final CoffeeRepository coffeeRepository;

  FavoriteCoffeesBloc({required this.coffeeRepository})
      : super(const FavoriteCoffeesState.empty()) {
    on<FavoriteCoffeesEvent>((event, emit) async {
      await event.map<Future<void>>(
          load: (event) => _onLoad(event, emit),
          update: (event) => _onUpdate(event, emit));
    });
  }

  Future<void> _onLoad(_FavoriteCoffeesEventLoad event,
      Emitter<FavoriteCoffeesState> emit) async {
    await state.maybeWhen<Future<void>>(
        empty: () async {
          emit(const FavoriteCoffeesState.loading());
          try {
            final List<Coffee> favorites =
                await coffeeRepository.getFavorites();
            emit(FavoriteCoffeesState.loaded(favorites));
            await coffeeRepository.saveFavorites(favorites);
          } on ReceivingFavoritesException catch (e) {
            emit(FavoriteCoffeesState.error(e.items, e.message));
          }
        },
        orElse: () async {});
  }

  Future<void> _onUpdate(_FavoriteCoffeesEventUpdate event,
      Emitter<FavoriteCoffeesState> emit) async {
    await state.maybeWhen(
      orElse: () async {
        emit(const FavoriteCoffeesState.empty());
      },
      loaded: (favorites) async {
        emit(const FavoriteCoffeesState.loading());
        final newFavorites = List.of(favorites);
        final coffee = event.coffee;
        newFavorites.contains(coffee)
            ? newFavorites.remove(coffee)
            : newFavorites.add(coffee);
        emit(FavoriteCoffeesState.loaded(newFavorites));
        await coffeeRepository.saveFavorites(newFavorites);
      },
    );
  }
}
