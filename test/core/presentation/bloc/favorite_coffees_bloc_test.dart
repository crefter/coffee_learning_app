import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'favorite_coffees_bloc_test.mocks.dart';

const loading = TypeMatcher<FavoriteCoffeesStateLoading>();
const empty = TypeMatcher<FavoriteCoffeesStateEmpty>();
const loaded = TypeMatcher<FavoriteCoffeesStateLoaded>();
const error = TypeMatcher<FavoriteCoffeesStateError>();

@GenerateNiceMocks([MockSpec<CoffeeRepository>(), MockSpec<Coffee>()])
void main() {
  late CoffeeRepository coffeeRepository;
  late FavoriteCoffeesBloc bloc;
  setUp(() {
    coffeeRepository = MockCoffeeRepository();
    bloc = FavoriteCoffeesBloc(coffeeRepository: coffeeRepository);
  });
  group('Favorite coffees bloc tests', () {
    test('should return initial state is [empty]', () {
      expect(bloc.state, empty);
    });
    test('should return [empty, loading, loaded] when add event without errors',
        () async {
      when(coffeeRepository.getFavorites())
          .thenAnswer((_) async => [MockCoffee()]);
      final states = <FavoriteCoffeesState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const FavoriteCoffeesEvent.load());
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, loaded];
      expect(states, expected);
    });
    test('should return [empty, loading, error] when add event with errors',
        () async {
      when(coffeeRepository.getFavorites())
          .thenAnswer((_) async => throw Error());
      final states = <FavoriteCoffeesState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const FavoriteCoffeesEvent.load());
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, error];
      expect(states, expected);
    });
    test(
        'should return [empty, empty] '
        'when update event and state is empty', () async {
      final states = <FavoriteCoffeesState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(FavoriteCoffeesEvent.update(MockCoffee()));
      await Future.delayed(Duration.zero);
      final expected = [empty, empty];
      expect(states, expected);
    });
    test(
        'should return [empty, loading, loaded, loading, loaded] '
        'when update event after add event without error', () async {
      when(coffeeRepository.getFavorites())
          .thenAnswer((_) async => [MockCoffee()]);
      final states = <FavoriteCoffeesState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const FavoriteCoffeesEvent.load());
      bloc.add(FavoriteCoffeesEvent.update(MockCoffee()));
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, loaded, loading, loaded];
      expect(states, expected);
    });
    test(
        'should return [empty, loading, error, empty] '
        'when update event after add with error', () async {
      when(coffeeRepository.getFavorites())
          .thenAnswer((_) async => throw Error());
      final states = <FavoriteCoffeesState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const FavoriteCoffeesEvent.load());
      bloc.add(FavoriteCoffeesEvent.update(MockCoffee()));
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, error, empty];
      expect(states, expected);
    });
  });
}
