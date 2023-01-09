part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.add(CoffeeItemOrder item) = _CartEventAdd;
  const factory CartEvent.plus(int index) = _CartEventPlus;
  const factory CartEvent.minus(int index) = _CartEventMinus;
  const factory CartEvent.delete(int index) = _CartEventDelete;
  const factory CartEvent.load() = _CartEventLoad;
}
