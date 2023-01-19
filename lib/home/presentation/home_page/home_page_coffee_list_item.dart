import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/cart/presentation/widget/cart_widget.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_list_item_picture.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_list_item_price.dart';

class HomePageCoffeeListItem extends StatelessWidget {
  final double topPicturePadding = 12;
  final double bottomPicturePadding = 8;

  const HomePageCoffeeListItem({
    Key? key,
    required this.coffee,
    required this.onCardClick,
  }) : super(key: key);

  final Coffee coffee;
  final void Function() onCardClick;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const borderRadius = 12.61;
    return SizedBox(
      width: 135,
      height: 230,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: const BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: InkWell(
          onTap: () {
            onCardClick();
          },
          borderRadius: BorderRadius.circular(borderRadius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: topPicturePadding),
              HomePageCoffeeListItemPicture(
                image: coffee.image,
                rating: coffee.rating,
              ),
              SizedBox(height: bottomPicturePadding),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Text(
                  coffee.name,
                  style: theme.textTheme.labelMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
              BlocListener<CartBloc, CartState>(
                listenWhen: (prev, curr) {
                  final prevList = prev.maybeWhen(
                    orElse: () => [],
                    loaded: (list) => list,
                  );
                  final currList = curr.maybeWhen(
                    orElse: () => [],
                    loaded: (list) => list,
                  );
                  return currList.length > prevList.length;
                },
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    loaded: (list) {
                      animatedGlobalKey.currentState
                          ?.insertItem(list.length - 1);
                    },
                  );
                },
                child: HomePageCoffeeListItemPrice(
                  curr: coffee.currency,
                  price: coffee.price,
                  onTap: () {
                    context.read<CartBloc>().add(
                          CartEvent.add(
                            CoffeeItemOrder(coffee: coffee, count: 1),
                          ),
                        );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
