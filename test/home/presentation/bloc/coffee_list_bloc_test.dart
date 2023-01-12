import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:learning/home/presentation/bloc/coffee_list/coffee_list_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coffee_list_bloc_test.mocks.dart';

const empty = TypeMatcher<EmptyCoffeeListState>();
const loading = TypeMatcher<LoadingCoffeeListState>();
const loaded = TypeMatcher<LoadedCoffeeListState>();
const error = TypeMatcher<ErrorCoffeeListState>();

@GenerateNiceMocks([MockSpec<CoffeeRepository>(), MockSpec<Coffee>()])
void main() {
  late CoffeeListBloc bloc;
  late CoffeeRepository coffeeRepository;
  setUp(() {
    coffeeRepository = MockCoffeeRepository();
    bloc = CoffeeListBloc(coffeeRepository: coffeeRepository);
  });
  group('Coffee list bloc tests', () {
    test('should return initial state is empty', () {
      expect(bloc.state, empty);
    });
    test(
        'should return [empty, loading, loaded] '
        'when startLoading event with no errors', () async {
      when(coffeeRepository.getAll()).thenAnswer((_) async => [MockCoffee()]);
      final states = <CoffeeListState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const CoffeeListEvent.startLoading());
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, loaded];
      expect(states, expected);
    });
    test(
        'should return [empty, loading, error] '
        'when startLoading event with errors', () async {
      when(coffeeRepository.getAll()).thenAnswer((_) async => throw Error());
      final states = <CoffeeListState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const CoffeeListEvent.startLoading());
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, error];
      expect(states, expected);
    });
    test(
        'should return [empty, loaded] '
        'when typeSelected event from initial state', () async {
      final states = <CoffeeListState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const CoffeeListEvent.typeSelected(CoffeeType.americano));
      await Future.delayed(Duration.zero);
      final expected = [empty, loaded];
      expect(states, expected);
    });
    test(
        'should return [empty, loading, loaded, loaded] '
        'when startLoading event with no errors then typeSelected event',
        () async {
      when(coffeeRepository.getAll()).thenAnswer((_) async => [MockCoffee()]);
      final states = <CoffeeListState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const CoffeeListEvent.startLoading());
      bloc.add(const CoffeeListEvent.typeSelected(CoffeeType.americano));
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, loaded, loaded];
      expect(states, expected);
    });
    test(
        'should return [empty, loading, error, loaded] '
        'when startLoading event with errors then typeSelected event',
        () async {
      when(coffeeRepository.getAll()).thenAnswer((_) async => throw Error());
      final states = <CoffeeListState>[];
      states.add(bloc.state);
      bloc.stream.listen((state) => states.add(state));
      bloc.add(const CoffeeListEvent.startLoading());
      bloc.add(const CoffeeListEvent.typeSelected(CoffeeType.americano));
      await Future.delayed(Duration.zero);
      final expected = [empty, loading, error, loaded];
      expect(states, expected);
    });
  });
}
