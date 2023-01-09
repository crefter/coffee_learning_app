import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coffee_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CoffeeRepository>()])
void main() {
  late final MockCoffeeRepository coffeeRepository;
  setUpAll(() {
    coffeeRepository = MockCoffeeRepository();
  });
  group('Coffee repository test', () {
    group('getAll()', () {
      test('should return all coffees', () async {
        when(coffeeRepository.getAll()).thenAnswer(
          (_) async => const [
            Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getAll();
        const expected = [
          Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual, expected);
      });
      test('should return only unique coffees', () async {
        when(coffeeRepository.getAll()).thenAnswer(
          (realInvocation) async => const [
            Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getAll();
        const expected = [
          Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual == expected, false);
      });
    });
    group('getFavorites()', () {
      test('should return favorite coffees', () async {
        when(coffeeRepository.getFavorites()).thenAnswer(
          (_) async => const [
            Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getFavorites();
        const expected = [
          Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual, expected);
      });
      test('should return only unique coffees', () async {
        when(coffeeRepository.getFavorites()).thenAnswer(
          (realInvocation) async => const [
            Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee(2, CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getFavorites();
        const expected = [
          Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee(1, CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual == expected, false);
      });
    });
  });
}
