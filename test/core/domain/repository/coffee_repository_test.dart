import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/datasource/local/favorites_local_datasource.dart';
import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/data/datasource/remote/coffee_remote_datasource.dart';
import 'package:learning/core/data/datasource/remote/favorites_remote_datasource.dart';
import 'package:learning/core/data/datasource/remote/post_remote_datasource.dart';
import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_all_coffee_exception.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/data/repository/coffee_repositoty_impl.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coffee_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CoffeeRemoteDatasource>(),
  MockSpec<FavoritesRemoteDatasource>(),
  MockSpec<FavoritesLocalDatasource>(),
])
void main() {
  late final CoffeeRepository coffeeRepository;
  late final RemoteDatasource<Coffee> coffeeRemoteDatasource;
  late final PostRemoteDatasource<Coffee> favoritesRemoteDatasource;
  late final LocalDatasource<Coffee> favoritesLocalDatasource;
  setUpAll(() {
    coffeeRemoteDatasource = MockCoffeeRemoteDatasource();
    favoritesLocalDatasource = MockFavoritesLocalDatasource();
    favoritesRemoteDatasource = MockFavoritesRemoteDatasource();
    coffeeRepository = CoffeeRepositoryImpl(
      coffeeRemoteDatasource,
      favoritesRemoteDatasource,
      favoritesLocalDatasource,
    );
  });
  group('Coffee repository test', () {
    group('getAll()', () {
      test('should return all coffees from coffeeRemoteDatasource', () async {
        when(coffeeRemoteDatasource.get()).thenAnswer(
          (_) async => const [
            Coffee('1', CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee('2', CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getAll();
        const expected = [
          Coffee('1', CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee('2', CoffeeType.cappuccino, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual, expected);
      });
      test(
          'should throw ReceivingAllCoffeeException '
          'if error coffeeRemoteDatasource', () async {
        when(coffeeRemoteDatasource.get())
            .thenAnswer((_) async => throw ReceivingAllCoffeeException([], ''));
        expect(
          () async => await coffeeRepository.getAll(),
          throwsA(isA<ReceivingAllCoffeeException>()),
        );
      });
    });
    group('getFavorites()', () {
      test(
          'should return favorite coffees '
          'from favoritesRemoteDatasource if no errors', () async {
        when(favoritesRemoteDatasource.get()).thenAnswer(
          (_) async => const [
            Coffee('1', CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee('2', CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        final actual = await coffeeRepository.getFavorites();
        const expected = [
          Coffee('1', CoffeeType.americano, 'name', 'description', 1, 1, 'image',
              'currency'),
          Coffee('2', CoffeeType.cappuccino, 'name', 'description', 1, 1, 'image',
              'currency'),
        ];
        expect(actual, expected);
      });
      test(
          'should throw ReceivingFavoritesException with data '
          'from favoritesLocalDatasource '
          'if favoriteRemoteDatasource have errors', () async {
        when(favoritesRemoteDatasource.get()).thenAnswer(
          (_) async => throw ReceivingFavoritesException([], 'message'),
        );
        when(favoritesLocalDatasource.get()).thenAnswer(
          (_) async => const [
            Coffee('1', CoffeeType.americano, 'name', 'description', 1, 1,
                'image', 'currency'),
            Coffee('2', CoffeeType.cappuccino, 'name', 'description', 1, 1,
                'image', 'currency'),
          ],
        );
        try {
          await coffeeRepository.getFavorites();
        } catch (e) {
          verify(favoritesLocalDatasource.get()).called(1);
        }
        expect(
          () async => await coffeeRepository.getFavorites(),
          throwsA(isA<ReceivingFavoritesException>()),
        );
      });
    });
    group('saveFavorites()', () {
      test('should call save() localFavoriteDatasource', () async {
        when(favoritesLocalDatasource.save([])).thenAnswer((_) async {});
        await coffeeRepository.saveFavorites([], true);
        verify(favoritesLocalDatasource.save([])).called(1);
      });
    });
  });
}
