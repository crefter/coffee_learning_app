import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/datasource/local/cart_local_datasource.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cart_local_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
void main() {
  late CartLocalDatasource localDatasource;
  late SharedPreferences sharedPreferences;
  setUp(() async {
    sharedPreferences = MockSharedPreferences();
    localDatasource = CartLocalDatasource(sharedPreferences);
  });
  group('CartLocalDatasource tests', () {
    group('get()', () {
      test('return [] if saved empty string', () async {
        when(sharedPreferences.getString('cart')).thenReturn('');
        final actual = await localDatasource.get();
        const expected = <CoffeeItemOrder>[];
        expect(actual, expected);
      });
    });
    test('return list of coffee item orders if saved json', () async {
      when(sharedPreferences.getString('cart')).thenReturn('[{'
          '"coffee": {'
          ' "id": 1,'
          '"type": "Americano",'
          '"name": "americano",'
          '"description": "description",'
          '"price": 1,'
          '"rating": 1,'
          '"image": "/image",'
          '"currency": "curr"'
          '},'
          '"count": 2,'
          '"milk": "Oat Milk"'
          '}]');
      final actual = await localDatasource.get();
      const expected = <CoffeeItemOrder>[
        CoffeeItemOrder(
          coffee: Coffee(
            '1',
            CoffeeType.americano,
            'americano',
            'description',
            1,
            1,
            '/image',
            'curr',
          ),
          count: 2,
          milk: Milk.oatMilk,
        )
      ];
      expect(actual, expected);
    });
    group('save()', () {
      test('should set saved empty string if data is empty', () async {
        when(sharedPreferences.setString('cart', '')).thenAnswer((_) async {
          return true;
        });
        await localDatasource.save([]);
        verify(await sharedPreferences.setString('cart', '')).called(1);
      });
      test('should set saved json if data is not empty', () async {
        await localDatasource.save(
          const <CoffeeItemOrder>[
            CoffeeItemOrder(
              coffee: Coffee(
                '1',
                CoffeeType.americano,
                'americano',
                'description',
                1.0,
                1.0,
                '/image',
                'curr',
              ),
              count: 2,
              milk: Milk.oatMilk,
            )
          ],
        );
        verify(
          await sharedPreferences.setString('cart',
              '[{"coffee":{"id":"1","type":"Americano","name":"americano","description":"description","price":1.0,"rating":1.0,"image":"/image","currency":"curr"},"milk":"Oat Milk","count":2}]'),
        ).called(1);
      });
    });
  });
}
