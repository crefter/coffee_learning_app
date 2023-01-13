import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/core/presentation/widget/stylized_text_button.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key? key,
    required this.coffee,
    required this.index,
  }) : super(key: key);

  final Coffee coffee;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: StylizedTextButton(
          text: 'BUY NOW',
          onTap: () {
            context.read<CartBloc>().add(
                  CartEvent.add(
                    CoffeeItemOrder(
                      coffee: coffee,
                      milk: Milk.values[index],
                      count: 1,
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
