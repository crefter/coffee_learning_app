import 'package:learning/core/data/exception/receiving_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class ReceivingFavoritesException extends ReceivingException<Coffee> {
  ReceivingFavoritesException(super.items, super.message);

}