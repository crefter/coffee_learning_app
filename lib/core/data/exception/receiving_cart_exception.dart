import 'package:learning/core/domain/entity/coffee_item_order.dart';

class ReceivingCartException extends Error {
  final List<CoffeeItemOrder> items;
  final String message;

  ReceivingCartException(this.items, this.message);
}