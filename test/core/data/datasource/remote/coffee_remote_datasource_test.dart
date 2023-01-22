import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/data/exception/receiving_all_coffee_exception.dart';
import 'package:learning/main/data/datasource/remote/coffee_remote_datasource.dart';

void main() {
  late CoffeeRemoteDatasource datasource;
  late FirebaseFirestore db;

  setUp(() {
    db = FakeFirebaseFirestore();
    datasource = CoffeeRemoteDatasource(db);
  });

  group('CoffeeRemoteDatasource tests', () {
    group('get()', () {
      test('should return List of coffees if db have no exceptions', () async {
        db.collection('coffees')
          ..add({
            'type': 'Cappuccino',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': 10,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizzled with ads',
            'description': 'Description',
            'price': 100,
            'rating': 4.5,
            'image': 'image',
            'currency': 'RUB',
          });
        final actual = (await datasource.get()).length;
        const expected = 2;
        expect(actual, expected);
      });
      test('should throw ReceivingAllCoffeeException if db have exceptions', () async {
        db.collection('coffees')
          ..add({
            'type': 'Cappuccino',
            'name': 'Drizzled with caramel',
            'description': 'Description',
            'price': 10,
            'rating': 4,
            'image': 'image',
            'currency': 'RUB',
          })
          ..add({
            'type': 'Americano',
            'name': 'Drizzled with ads',
            'description': 'Description',
            'price': '100',
            'rating': 4.5,
            'image': 'image',
            'currency': 'RUB',
          });
        final expected = throwsA(isA<ReceivingAllCoffeeException>());
        await expectLater(datasource.get(), expected);
      });
    });
  });
}
