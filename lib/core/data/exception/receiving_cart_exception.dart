import 'package:learning/core/data/exception/receiving_exception.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';

class ReceivingCartException extends ReceivingException<CoffeeItemOrder> {
  ReceivingCartException(super.items, super.message);
}
