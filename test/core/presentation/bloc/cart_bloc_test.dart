import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cart_bloc_test.mocks.dart';

const loading = TypeMatcher<CartStateLoading>();
const empty = TypeMatcher<CartStateEmpty>();
const loaded = TypeMatcher<CartStateLoaded>();
const error = TypeMatcher<CartStateError>();

@GenerateNiceMocks([MockSpec<CartRepository>(), MockSpec<CoffeeItemOrder>()])
void main() {
  late CartBloc cartBloc;
  late CartRepository mockRepository;
  setUp(() {
    mockRepository = MockCartRepository();
    cartBloc = CartBloc(cartRepository: mockRepository);
  });
  tearDown(() async {
    await cartBloc.close();
  });
  group('Cart bloc tests', () {
    test('should initial state is empty', () async {
      expect(cartBloc.state, empty);
    });
    test(
        'should return initial state is empty '
        'and next loaded state when add event', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      cartBloc.add(CartEvent.add(MockCoffeeItemOrder()));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loading, loaded] '
        'when load event with no errors', () async {
      when(mockRepository.get()).thenAnswer((_) async => [
            MockCoffeeItemOrder(),
          ]);
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      cartBloc.add(const CartEvent.load());
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loading, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loading, error] '
        'when load event with errors', () async {
      when(mockRepository.get()).thenAnswer(
        (_) async => throw ReceivingCartException([], 'message'),
      );
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      cartBloc.add(const CartEvent.load());
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loading, error];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, empty] '
        'when delete event and list is empty', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      cartBloc.add(const CartEvent.delete(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [empty];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, empty] '
        'when add and delete event; list length=1 and contains CoffeeItemOrder',
        () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      cartBloc.add(CartEvent.add(MockCoffeeItemOrder()));
      cartBloc.add(const CartEvent.delete(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, empty];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, loaded] '
        'when add, add and delete event; '
        'list length=2 and contains CoffeeItemOrder', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      final mock1 = MockCoffeeItemOrder();
      final mock2 = MockCoffeeItemOrder();
      when(mock2.coffee).thenAnswer((_) => const Coffee('1', CoffeeType.espresso,
          'name', 'description', 1, 1, 'image', 'curr'));
      cartBloc.add(CartEvent.add(mock1));
      cartBloc.add(CartEvent.add(mock2));
      cartBloc.add(const CartEvent.delete(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded]'
        'when add and add event; list length=1, count=2', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      const mock2 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.add(mock2));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded]'
        'when add and plus event; list length=1, count=2', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, loaded, empty]'
        'when add, add, plus, plus event; list length=2, count1=3, count2=1',
        () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      const mock2 = CoffeeItemOrder(
          coffee: Coffee('2', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.add(mock2));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, loaded]'
        'when add, plus, minus event; list length=1, count=1', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.minus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, empty]'
        'when add, minus event', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.minus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, empty];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, loaded, loaded]'
        'when add, plus, minus, minus event; list length=1 count=2', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.minus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, loaded, loaded];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, loaded, empty]'
        'when add, plus, minus, minus event', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.minus(0));
      cartBloc.add(const CartEvent.minus(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, loaded, empty];
      expect(states, wrapMatcher(expected));
    });
    test(
        'should return [empty, loaded, loaded, empty]'
        'when add, plus, delete event; list length=1, count=2', () async {
      final states = <CartState>[];
      expect(cartBloc.state, empty);
      const mock1 = CoffeeItemOrder(
          coffee: Coffee('1', CoffeeType.espresso, 'name', 'description', 1, 1,
              'image', 'curr'),
          count: 1);
      cartBloc.add(const CartEvent.add(mock1));
      cartBloc.add(const CartEvent.plus(0));
      cartBloc.add(const CartEvent.delete(0));
      cartBloc.stream.listen((state) => states.add(state));
      await Future.delayed(Duration.zero);
      final expected = [loaded, loaded, empty];
      expect(states, wrapMatcher(expected));
    });
  });
}
