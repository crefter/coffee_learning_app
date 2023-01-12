import 'package:learning/core/data/exception/receiving_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class ReceivingAllCoffeeException extends ReceivingException<Coffee> {
  ReceivingAllCoffeeException(super.items, super.message);

}