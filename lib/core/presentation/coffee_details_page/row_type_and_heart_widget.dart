import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:learning/core/presentation/coffee_details_page/heart_icon_button_widget.dart';

class RowTypeAndHeartWidget extends StatelessWidget {
  const RowTypeAndHeartWidget({
    Key? key,
    required this.coffee,
    required this.onFavoriteClick,
  }) : super(key: key);

  final Coffee coffee;
  final void Function() onFavoriteClick;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          coffee.type.typeName,
          style: theme.textTheme.titleMedium,
        ),
        BlocBuilder<FavoriteCoffeesBloc, FavoriteCoffeesState>(
          builder: (context, state) {
            return state.maybeWhen<Widget>(
              orElse: () => HeartIconButtonWidget(
                  onFavoriteClick: onFavoriteClick,
                  icon: const Icon(Icons.favorite_border_outlined),
                  color: theme.iconTheme
                      .copyWith(color: const Color.fromARGB(255, 201, 76, 76))
                      .color!),
              loaded: (favorites) {
                return favorites.contains(coffee)
                    ? HeartIconButtonWidget(
                        onFavoriteClick: onFavoriteClick,
                        color: theme.iconTheme
                            .copyWith(
                                color: const Color.fromARGB(255, 201, 76, 76))
                            .color!,
                        icon: const Icon(Icons.favorite),
                      )
                    : HeartIconButtonWidget(
                        onFavoriteClick: onFavoriteClick,
                        icon: const Icon(Icons.favorite_border_outlined),
                        color: theme.iconTheme
                            .copyWith(
                                color: const Color.fromARGB(255, 201, 76, 76))
                            .color!);
              },
            );
          },
        ),
      ],
    );
  }
}
