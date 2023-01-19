import 'package:flutter/material.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_list_item_button.dart';

class HomePageCoffeeListItemPrice extends StatelessWidget {
  final void Function() onTap;

  const HomePageCoffeeListItemPrice({
    Key? key,
    required this.curr,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final String curr;
  final double price;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 111,
      height: 39,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: theme.colorScheme.onSecondaryContainer),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    IconData(
                      int.parse(
                        curr,
                        radix: 16,
                      ),
                    ),
                    size: 16,
                    color: theme.textTheme.labelLarge!.color,
                  ),
                  Text(
                    '$price',
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            HomePageCoffeeListItemButton(
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
