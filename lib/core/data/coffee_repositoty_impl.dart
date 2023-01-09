import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';

class CoffeeRepositoryImpl implements CoffeeRepository {
  @override
  Future<List<Coffee>> getAll() async {
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
      Coffee(
        2,
        CoffeeType.americano,
        'Americano With Caramel',
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup',
        159,
        4.5,
        'https://www.talepse.com/pictures/ab17173aa7ff471b69c21c2b4d866a62.jpg',
        '\u{20BD}',
      ),
    ];
  }

  @override
  Future<List<Coffee>> getFavorites() async {
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
  }
}
