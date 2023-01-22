import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_all_coffee_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class CoffeeRemoteDatasource implements RemoteDatasource<Coffee> {
  final FirebaseFirestore db;

  CoffeeRemoteDatasource(this.db);

  @override
  Future<List<Coffee>> get() async {
    final List<Coffee> result = [];
    try {
      await db.collection('coffees').get().then((event) {
        for (var doc in event.docs) {
          final map = doc.data();
          map['id'] = doc.reference.id;
          Coffee coffee = Coffee.fromJson(map);
          result.add(coffee);
        }
      });
      return result;
    } catch (error) {
      throw ReceivingAllCoffeeException([], error.toString());
    }
  }
}
