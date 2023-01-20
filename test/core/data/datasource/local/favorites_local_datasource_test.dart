import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/datasource/local/favorites_local_datasource.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'favorites_local_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
void main() {
  late SharedPreferences sharedPreferences;
  late FavoritesLocalDatasource favLocalDatasource;

  setUp(() {
    sharedPreferences = MockSharedPreferences();
    favLocalDatasource = FavoritesLocalDatasource(sharedPreferences);
  });

  group('FavoritesLocalDatasource tests', () {
    group('get()', () {
      test('should return [] if saved empty string', () async {
        when(sharedPreferences.getString('fav')).thenReturn(null);
        final actual = await favLocalDatasource.get();
        final expected = <Coffee>[];
        verify(sharedPreferences.getString('fav')).called(1);
        expect(actual, expected);
      });
      test('should return list of coffees if saved json', () async {
        when(sharedPreferences.getString('fav')).thenReturn(
            '[{"id":"1","type":"Latte","name":"name","description":"desc",'
            '"price":1.0,"rating":1.0,"image":"/image","currency":"curr"}]');
        final actual = await favLocalDatasource.get();
        const expected = <Coffee>[
          Coffee('1', CoffeeType.latte, 'name', 'desc', 1, 1, '/image', 'curr'),
        ];
        verify(sharedPreferences.getString('fav')).called(1);
        expect(actual, expected);
      });
    });
    group('save()', () {
      test('should set empty string if data is empty', () async {
        when(sharedPreferences.setString('fav', ''))
            .thenAnswer((realInvocation) async => true);
        await favLocalDatasource.save([]);
        verify(sharedPreferences.setString('fav', '')).called(1);
      });
      test('should set json if data is not empty', () async {
        when(
          sharedPreferences.setString(
              'fav',
              '[{"id":"1","type":"Latte","name":"name","description":"desc",'
                  '"price":1.0,"rating":1.0,"image":"/image","currency":"curr"}]'),
        ).thenAnswer((_) async => true);
        await favLocalDatasource.save([
          const Coffee(
            '1',
            CoffeeType.latte,
            'name',
            'desc',
            1,
            1,
            '/image',
            'curr',
          ),
        ]);
        verify(sharedPreferences.setString(
                'fav',
                '[{"id":"1","type":"Latte","name":"name","description":"desc",'
                    '"price":1.0,"rating":1.0,"image":"/image","currency":"curr"}]'))
            .called(1);
      });
    });
  });
}
