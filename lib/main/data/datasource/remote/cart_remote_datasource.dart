import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learning/core/data/datasource/remote/pgd_remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';

class CartRemoteDatasource implements PGDRemoteDatasource<CoffeeItemOrder> {
  final FirebaseFirestore db;

  CartRemoteDatasource(this.db);

  @override
  Future<List<CoffeeItemOrder>> get() async {
    try {
      final List<CoffeeItemOrder> result = [];
      await db.collection('cart').get().then((event) async {
        for (var doc in event.docs) {
          await db
              .collection('coffees')
              .doc(doc.data()['coffee'])
              .get()
              .then((coffeeDoc) {
            final data = coffeeDoc.data()!;
            data['id'] = coffeeDoc.reference.id;
            Coffee coffee = Coffee.fromJson(data);
            final map = {
              'coffee': coffee.toJson(),
              'count': doc.data()['count'],
              'milk': doc.data()['milk'],
            };
            result.add(CoffeeItemOrder.fromJson(map));
          });
        }
      });
      return result;
    } catch (_) {
      throw ReceivingCartException([], 'Ошибка получения корзины!');
    }
  }

  @override
  Future<void> post(List<CoffeeItemOrder> items) async {
    if (items.isEmpty) {
      return;
    }
    for (var item in items) {
      final json = {
        'coffee': item.coffee.id,
        'milk': item.milk.milkName,
        'count': item.count,
      };
      await db
          .collection('cart')
          .where('coffee', isEqualTo: item.coffee.id)
          .get()
          .then((ref) async {
        if (ref.size == 0) {
          await db.collection('cart').add(json);
        }
        for (var doc in ref.docs) {
          if (doc.exists) {
            doc.reference.update(json);
          }
        }
      });
    }
  }

  @override
  Future<void> delete(CoffeeItemOrder item) async {
    await db
        .collection('cart')
        .where('coffee', isEqualTo: item.coffee.id)
        .get()
        .then((ref) async {
      for (var doc in ref.docs) {
        if (doc.exists) {
          await doc.reference.delete();
        }
      }
    });
  }
}
