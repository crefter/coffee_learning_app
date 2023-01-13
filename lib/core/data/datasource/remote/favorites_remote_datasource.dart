import 'dart:math';

import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class FavoritesRemoteDatasource implements RemoteDatasource<Coffee> {
  @override
  Future<List<Coffee>> get() async {
    Random rand = Random();
    int nextInt = rand.nextInt(1000);
    if (nextInt < 800) {
      return const <Coffee>[
        Coffee(
          1,
          CoffeeType.cappuccino,
          'Drizzled With Caramel',
          'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup',
          249,
          4.5,
          'https://www.talepse.com/pictures/ab17173aa7ff471b69c21c2b4d866a62.jpg',
          '\u{20BD}',
        ),
      ];
    } else {
      throw ReceivingFavoritesException(
        [],
        'Ошибка получения избранных с сервера!',
      );
    }
  }

  @override
  Future<void> post(List<Coffee> items) async {
  }
}
