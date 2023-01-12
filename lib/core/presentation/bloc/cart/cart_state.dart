part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();

  const factory CartState.empty() = CartStateEmpty;

  const factory CartState.loading() = CartStateLoading;

  const factory CartState.loaded(List<CoffeeItemOrder> items) = CartStateLoaded;

  const factory CartState.error(
    List<CoffeeItemOrder> items,
    String message,
  ) = CartStateError;

  double get totalPrice => maybeWhen<double>(
        orElse: () => deliveryCharges,
        loaded: (list) => list.isEmpty
            ? 0
            : list.map<double>((e) => e.coffee.price * e.count).toList().reduce(
                  (value, element) => value + element,
                ) + deliveryCharges + taxes,
      );

  double get taxes => maybeWhen<double>(
        orElse: () => 0,
        loaded: (list) => list.isEmpty
            ? 0
            : 16 *
                list.map<double>((e) => e.count.toDouble()).toList().reduce(
                      (value, element) => value + element,
                    ),
      );

  double get deliveryCharges => maybeWhen<double>(orElse: () => 50);
}
