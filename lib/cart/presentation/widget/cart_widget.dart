import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/cart/presentation/widget/coffee_cart_item_description_widget.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/core/presentation/widget/item_widget.dart';

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
          empty: () => Center(
            child: Column(
              children: [
                Text(
                  'Cart is empty!',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
              ],
            ),
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
              return ItemWidget<CoffeeItemOrder>(
                onTapDeleteWidget: () async {
                  await Future.sync(
                    () => context.read<CartBloc>().add(
                          CartEvent.delete(index),
                        ),
                  );
                },
                itemChild: CoffeeCartItemDescriptionWidget(
                  index: index,
                  coffeeItemOrder: items[index],
                ),
              );
            },
          ),
          error: (items, _) => ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            key: animatedGlobalKey,
            itemBuilder: (context, index) {
              return ItemWidget<CoffeeItemOrder>(
                onTapDeleteWidget: () async {
                  await Future.sync(
                    () => context.read<CartBloc>().add(
                          CartEvent.delete(index),
                        ),
                  );
                },
                itemChild: CoffeeCartItemDescriptionWidget(
                  index: index,
                  coffeeItemOrder: items[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
