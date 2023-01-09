import 'package:learning/core/domain/entity/coffee_item_order.dart';

abstract class CartRepository {
  Future<List<CoffeeItemOrder>> get();
  Future<void> save(List<CoffeeItemOrder> items);
}