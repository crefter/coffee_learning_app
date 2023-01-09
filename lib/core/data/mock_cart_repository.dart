import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';

class MockCartRepository implements CartRepository {
  @override
  Future<List<CoffeeItemOrder>> get() async {
    return const <CoffeeItemOrder>[
      CoffeeItemOrder(
        coffee: Coffee(
          1,
          CoffeeType.cappuccino,
          'Drizzled With Caramel',
          'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup',
          249,
          4.5,
          'https://www.talepse.com/pictures/ab17173aa7ff471b69c21c2b4d866a62.jpg',
          '\u{20BD}',
        ),
        count: 2,
      ),
    ];
  }

  @override
  Future<void> save(List<CoffeeItemOrder> items) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
