import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/datasource/local/cart_local_datasource.dart';
import 'package:learning/core/data/datasource/remote/cart_remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
import 'package:learning/core/data/repository/cart_repository_impl.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cart_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CartLocalDatasource>(),
  MockSpec<CartRemoteDatasource>(),
])
void main() {
  late final CartRepository repository;
  late final CartLocalDatasource localDatasource;
  late final CartRemoteDatasource remoteDatasource;
  setUpAll(() {
    localDatasource = MockCartLocalDatasource();
    remoteDatasource = MockCartRemoteDatasource();
    repository = CartRepositoryImpl(
      localDatasource: localDatasource,
      remoteDatasource: remoteDatasource,
    );
  });
  group('Cart repository tests', () {
    group('get()', () {
      test('should return list of coffee item orders from remoteDatasource',
          () async {
        when(remoteDatasource.get()).thenAnswer(
          (_) async => const [
            CoffeeItemOrder(
                coffee: Coffee('1', CoffeeType.cappuccino, 'cappuccino', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 2),
            CoffeeItemOrder(
                coffee: Coffee('2', CoffeeType.americano, 'americano', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 1),
            CoffeeItemOrder(
                coffee: Coffee('3', CoffeeType.cappuccino, 'cappuccino',
                    'another coffee', 2, 1, 'image', 'currency'),
                count: 3),
          ],
        );
        final actual = await repository.get();
        const expected = [
          CoffeeItemOrder(
              coffee: Coffee('1', CoffeeType.cappuccino, 'cappuccino', 'coffee',
                  1, 1, 'image', 'currency'),
              count: 2),
          CoffeeItemOrder(
              coffee: Coffee('2', CoffeeType.americano, 'americano', 'coffee', 1,
                  1, 'image', 'currency'),
              count: 1),
          CoffeeItemOrder(
              coffee: Coffee('3', CoffeeType.cappuccino, 'cappuccino',
                  'another coffee', 2, 1, 'image', 'currency'),
              count: 3),
        ];
        expect(actual, expected);
      });
      test(
          'should throw exception with data from localDatasource'
          'if remoteDatasource throw exception', () async {
        when(remoteDatasource.get()).thenAnswer(
            (_) async => throw ReceivingCartException([], 'message'));
        when(localDatasource.get()).thenAnswer(
          (_) async => const [
            CoffeeItemOrder(
                coffee: Coffee('1', CoffeeType.cappuccino, 'cappuccino', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 2),
            CoffeeItemOrder(
                coffee: Coffee('2', CoffeeType.americano, 'americano', 'coffee',
                    1, 1, 'image', 'currency'),
                count: 1),
            CoffeeItemOrder(
                coffee: Coffee('3', CoffeeType.cappuccino, 'cappuccino',
                    'another coffee', 2, 1, 'image', 'currency'),
                count: 3),
          ],
        );
        expect(() async => await repository.get(),
            throwsA(isA<ReceivingCartException>()));
      });
    });
    group('save()', () {
      test('should save data to localDatasource and remoteDatasource', () async {
        when(localDatasource.save([])).thenAnswer((_) async {});
        when(remoteDatasource.post([])).thenAnswer((_) async {});
        await repository.save([]);
        verify(localDatasource.save([])).called(1);
        verify(remoteDatasource.post([])).called(1);
      });
    });
  });
}
