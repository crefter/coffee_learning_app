import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/cart/presentation/widget/coffee_cart_item_widget.dart';

final animatedGlobalKey = GlobalKey<AnimatedListState>();

class CartWidget extends StatelessWidget {
  const CartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return state.when(
          empty: () => const Center(
            child: Text('Cart is empty!'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (items) => ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            key: animatedGlobalKey,
            itemBuilder: (context, index) {
              return CoffeeCartItemWidget(
                index: index,
                coffeeItemOrder: items[index],
              );
            },
          ),
          error: (_, message) => Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}
