import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cart_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CartRepository>()])
void main() {
  late final CartRepository repository;
  setUpAll(() {
    repository = MockCartRepository();
  });
  group('Cart repository tests', () {
    group('get()', () {
      test('should return list of coffee item orders', () async {
        when(repository.get()).thenAnswer(
          (realInvocation) async => const [
            CoffeeItemOrder(
                coffee: Coffee(1, CoffeeType.cappuccino, 'cappuccino', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 2),
            CoffeeItemOrder(
                coffee: Coffee(2, CoffeeType.americano, 'americano', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 1),
            CoffeeItemOrder(
                coffee: Coffee(3, CoffeeType.cappuccino, 'cappuccino',
                    'another coffee', 2, 1, 'image', 'currency'),
                count: 3),
          ],
        );
        final actual = await repository.get();
        const expected = [
          CoffeeItemOrder(
              coffee: Coffee(1, CoffeeType.cappuccino, 'cappuccino', 'coffee',
                  1, 1, 'image', 'currency'),
              count: 2),
          CoffeeItemOrder(
              coffee: Coffee(2, CoffeeType.americano, 'americano', 'coffee', 1,
                  1, 'image', 'currency'),
              count: 1),
          CoffeeItemOrder(
              coffee: Coffee(3, CoffeeType.cappuccino, 'cappuccino',
                  'another coffee', 2, 1, 'image', 'currency'),
              count: 3),
        ];
        expect(actual, expected);
      });
      test('should return unique item orders', () async {
        when(repository.get()).thenAnswer(
          (realInvocation) async => const [
            CoffeeItemOrder(
                coffee: Coffee(1, CoffeeType.cappuccino, 'cappuccino', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 2),
            CoffeeItemOrder(
                coffee: Coffee(2, CoffeeType.americano, 'americano', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 1),
          ],
        );
        final actual = await repository.get();
        const expected = [
          CoffeeItemOrder(
              coffee: Coffee(1, CoffeeType.cappuccino, 'cappuccino', 'coffee',
                  1, 1, 'image', 'currency'),
              count: 2),
          CoffeeItemOrder(
              coffee: Coffee(2, CoffeeType.americano, 'americano', 'coffee', 1,
                  1, 'image', 'currency'),
              count: 1),
        ];
        expect(actual, expected);
      });
      test('count should more than 0', () async {
        when(repository.get()).thenAnswer((realInvocation) async => const [
              CoffeeItemOrder(
                  coffee: Coffee(1, CoffeeType.cappuccino, 'cappuccino',
                      'coffee', 1, 1, 'image', 'currency'),
                  count: 1),
              CoffeeItemOrder(
                  coffee: Coffee(2, CoffeeType.americano, 'americano', 'coffee',
                      1, 1, 'image', 'currency'),
                  count: 2),
            ]);
        final result = await repository.get();
        bool actual = true;
        for (var element in result) {
          if (element.count < 1) {
            actual = false;
            break;
          }
        }
        expect(actual, true);
      });
    });
  });
}
