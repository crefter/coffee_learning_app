import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learning/core/data/datasource/remote/post_remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class FavoritesRemoteDatasource implements PostRemoteDatasource<Coffee> {
  final FirebaseFirestore db;

  FavoritesRemoteDatasource(this.db);

  @override
  Future<List<Coffee>> get() async {
    try {
      final List<Coffee> result = [];
      await db
          .collection('coffees')
          .where('isFavorite', isEqualTo: true)
          .get()
          .then((event) {
        for (var doc in event.docs) {
          final map = doc.data();
          map['id'] = doc.reference.id;
          final Coffee coffee = Coffee.fromJson(map);
          result.add(coffee);
        }
      });
      return result;
    } catch (_) {
      throw ReceivingFavoritesException([], 'Ошибка получения избранных кофе!');
    }
  }

  @override
  Future<void> post(List<Coffee> items) async {
    try {
      await db.runTransaction((transaction) async {
        await db.collection('coffees').get().then((event) {
          for (var doc in event.docs) {
            final data = doc.data();
            bool isFound = false;
            for (var item in items) {
              if (item.description == data['description'] &&
                  item.name == data['name']) {
                doc.reference.update({'isFavorite': true});
                isFound = true;
                break;
              }
            }
            if (!isFound) {
              doc.reference.update({'isFavorite': false});
            }
          }
        });
      });
    } catch (_) {
      throw ReceivingFavoritesException([], 'Ошибка записи избранных кофе!');
    }
  }
}
