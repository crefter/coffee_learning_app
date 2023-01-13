import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:learning/core/presentation/widget/stylized_text_button.dart';

class CoffeeDetailsPage extends StatefulWidget {
  const CoffeeDetailsPage({
    Key? key,
    required this.onFavoriteClick,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;
  final void Function() onFavoriteClick;

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  int? _index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 343,
                    height: 411,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              widget.coffee.image,
                              width: 343,
                              height: 411,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 24,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: theme.colorScheme.onTertiary,
                              boxShadow: [
                                BoxShadow(
                                    color: theme.colorScheme
                                        .copyWith(
                                          onTertiary:
                                              const Color.fromARGB(38, 0, 0, 0),
                                        )
                                        .onTertiary,
                                    blurRadius: 15,
                                    spreadRadius: 0,
                                    blurStyle: BlurStyle.inner),
                              ],
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              splashRadius: 1,
                              hoverColor: Colors.red,
                              onPressed: () async {
                                await context.router.pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.coffee.type.typeName,
                      style: theme.textTheme.titleMedium,
                    ),
                    BlocBuilder<FavoriteCoffeesBloc, FavoriteCoffeesState>(
                      builder: (context, state) {
                        return state.maybeWhen<Widget>(
                          orElse: () => IconButton(
                            iconSize: 28,
                            splashRadius: 20,
                            onPressed: () {
                              widget.onFavoriteClick();
                            },
                            icon: const Icon(Icons.favorite),
                            color: theme.iconTheme
                                .copyWith(color: Colors.grey)
                                .color,
                          ),
                          loaded: (favorites) {
                            return favorites.contains(widget.coffee)
                                ? IconButton(
                                    iconSize: 28,
                                    splashRadius: 20,
                                    onPressed: () {
                                      widget.onFavoriteClick();
                                    },
                                    icon: const Icon(Icons.favorite),
                                    color: theme.iconTheme
                                        .copyWith(
                                            color: const Color.fromARGB(
                                                255, 201, 76, 76))
                                        .color,
                                  )
                                : IconButton(
                                    iconSize: 28,
                                    splashRadius: 20,
                                    onPressed: () {
                                      widget.onFavoriteClick();
                                    },
                                    icon: const Icon(
                                        Icons.favorite_border_outlined),
                                    color: theme.iconTheme
                                        .copyWith(
                                            color: const Color.fromARGB(
                                                255, 201, 76, 76))
                                        .color,
                                  );
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.coffee.name,
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 16),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: theme.iconTheme
                              .copyWith(
                                color: const Color.fromARGB(255, 211, 166, 1),
                              )
                              .color,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '${widget.coffee.rating}',
                          style: theme.textTheme.titleMedium
                              ?.copyWith(fontSize: 12, height: 1),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.coffee.description,
                  style: theme.textTheme.labelLarge
                      ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choice of Milk',
                      style: theme.textTheme.labelMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List<Widget>.generate(Milk.values.length, (index) {
                        return ChoiceChip(
                          labelStyle: _index == index
                              ? theme.textTheme.titleSmall
                              : theme.textTheme.labelSmall,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              width: 1,
                              color: theme.chipTheme.selectedColor!,
                            ),
                          ),
                          label: Text(Milk.values[index].milkName),
                          selected: index == _index,
                          onSelected: (selected) {
                            setState(() {
                              _index = selected ? index : null;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: [
                            Text(
                              widget.coffee.currency,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '${widget.coffee.price.toInt()}',
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: StylizedTextButton(
                          text: 'BUY NOW',
                          onTap: () {
                            context.read<CartBloc>().add(
                                  CartEvent.add(
                                    CoffeeItemOrder(
                                        coffee: widget.coffee,
                                        milk: Milk.values[_index!],
                                        count: 1),
                                  ),
                                );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
