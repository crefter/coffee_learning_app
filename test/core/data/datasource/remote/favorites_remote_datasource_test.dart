import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/datasource/remote/favorites_remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

void main() {
  late FavoritesRemoteDatasource datasource;
  late FirebaseFirestore db;

  setUp(() {
    db = FakeFirebaseFirestore();
    datasource = FavoritesRemoteDatasource(db);
  });

  group('FavoritesRemoteDatasource tests', () {
    group('get()', () {
      test('should return list of coffee if db have no exceptions', () async {
        db.collection('coffees')
          ..add({
            'type': 'Cappuccino',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': 10,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': true,
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': 10,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': false,
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizdasds',
            'description': 'Description',
            'price': 100,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': true,
          });
        final actual = (await datasource.get()).length;
        const expected = 2;
        expect(actual, expected);
      });
      test(
          'should return empty list '
          'if db have no exceptions and collection is empty', () async {
        final actual = (await datasource.get()).length;
        const expected = 0;
        expect(actual, expected);
      });
      test('should throw ReceivingFavoritesException if db have exceptions',
          () async {
        db.collection('coffees')
          ..add({
            'type': 'Cappuccino',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': '10',
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': true,
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': 10,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': false,
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizdasds',
            'description': 'Description',
            'price': 100,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
            'isFavorite': true,
          });
        final expected = throwsA(isA<ReceivingFavoritesException>());
        await expectLater(datasource.get(), expected);
      });
    });
    group('post()', () {
      test('should do nothing if items is empty', () async {
        await datasource.post([]);
      });
      test(
          'should update doc to true'
          'if items contain coffee and isFavorite is equal to false', () async {
        db.collection('coffees').add({
          'type': 'Americano',
          'name': 'Drizzled with caramel',
          'description': 'Description',
          'price': 10,
          'rating': 4,
          'image': 'image',
          'currency': 'RUB',
          'isFavorite': false,
        });
        await datasource.post(const [
          Coffee(
            'id',
            CoffeeType.americano,
            'Drizzled with caramel',
            'Description',
            10,
            4,
            'image',
            'currency',
          )
        ]);
        final actual = (await db.collection('coffees').get())
            .docs
            .first
            .data()['isFavorite'];
        const expected = true;
        expect(actual, expected);
      });
      test(
          'should don`t update doc '
          'if items contain coffee and isFavorite is equal to true', () async {
        db.collection('coffees').add({
          'type': 'Americano',
          'name': 'Drizzled with caramel',
          'description': 'Description',
          'price': 10,
          'rating': 4,
          'image': 'image',
          'currency': 'RUB',
          'isFavorite': true,
        });
        await datasource.post(const [
          Coffee(
            'id',
            CoffeeType.americano,
            'Drizzled with caramel',
            'Description',
            10,
            4,
            'image',
            'currency',
          )
        ]);
        final actual = (await db.collection('coffees').get())
            .docs
            .first
            .data()['isFavorite'];
        const expected = true;
        expect(actual, expected);
      });
      test(
          'should don`t update doc '
          'if items don`t coffee and isFavorite is equal to false', () async {
        db.collection('coffees').add({
          'type': 'Americano',
          'name': 'Drizzled with caramel',
          'description': 'Description',
          'price': 10,
          'rating': 4,
          'image': 'image',
          'currency': 'RUB',
          'isFavorite': false,
        });
        await datasource.post(const [
          Coffee(
            'id',
            CoffeeType.americano,
            'Another name',
            'Description',
            10,
            4,
            'image',
            'currency',
          )
        ]);
        final actual = (await db.collection('coffees').get())
            .docs
            .first
            .data()['isFavorite'];
        const expected = false;
        expect(actual, expected);
      });
      test(
          'should update doc isFavorite to false'
          'if items don`t contain coffee and isFavorite is equal to true',
          () async {
        db.collection('coffees').add({
          'type': 'Americano',
          'name': 'Drizzled with caramel',
          'description': 'Description',
          'price': 10,
          'rating': 4,
          'image': 'image',
          'currency': 'RUB',
          'isFavorite': true,
        });
        await datasource.post(const [
          Coffee(
            'id',
            CoffeeType.americano,
            'Another name',
            'Description',
            10,
            4,
            'image',
            'currency',
          )
        ]);
        final actual = (await db.collection('coffees').get())
            .docs
            .first
            .data()['isFavorite'];
        const expected = false;
        expect(actual, expected);
      });
    });
  });
}
