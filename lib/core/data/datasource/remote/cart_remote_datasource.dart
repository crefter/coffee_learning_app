import 'dart:math';

import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';

class CartRemoteDatasource implements RemoteDatasource<CoffeeItemOrder> {
  @override
  Future<List<CoffeeItemOrder>> get() async {
    Random rand = Random();
    int num = rand.nextInt(1000);
    if (num < 800) {
      await Future.delayed(const Duration(seconds: 2));
      return const [
        CoffeeItemOrder(
          coffee: Coffee(
              1,
              CoffeeType.americano,
              'americano',
              'description',
              10,
              4.5,
              'https://omtea.ru/wp-content/uploads/9/9/0/990c2a35101d14f6439542b930e93baa.jpeg',
              '\u{20BD}'),
          count: 2,
        )
      ];
    } else {
      throw ReceivingCartException([], 'Ошибка получения корзины с сервера!');
    }
  }

  @override
  Future<void> post(List<CoffeeItemOrder> items) async {}
}
