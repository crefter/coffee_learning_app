import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/widget/stylized_icon_button.dart';

class CoffeeCartItemDescriptionWidget extends StatelessWidget {
  const CoffeeCartItemDescriptionWidget({
    Key? key,
    required this.coffeeItemOrder,
    required this.index,
  }) : super(key: key);

  final CoffeeItemOrder coffeeItemOrder;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.1),
        ),
        height: 96,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                coffeeItemOrder.coffee.image,
                width: 72,
                height: 72,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeItemOrder.coffee.type.typeName,
                  style: theme.textTheme.labelMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  coffeeItemOrder.coffee.name,
                  style: theme.textTheme.labelMedium!.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 8),
                Text(
                  '${coffeeItemOrder.coffee.currency}${coffeeItemOrder.coffee.price}',
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.1),
              ),
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    child: StylizedIconButton(
                      onTap: () {
                        context.read<CartBloc>().add(CartEvent.minus(index));
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${coffeeItemOrder.count}',
                    style: theme.textTheme.titleMedium!.copyWith(fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 30,
                    child: StylizedIconButton(
                      onTap: () {
                        context.read<CartBloc>().add(CartEvent.plus(index));
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
