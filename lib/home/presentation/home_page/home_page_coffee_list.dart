import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/presentation/app_router.gr.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:learning/home/presentation/bloc/coffee_list/coffee_list_bloc.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCoffeeList extends StatelessWidget {
  const HomePageCoffeeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CoffeeListBloc, CoffeeListState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Placeholder(),
            loaded: (_, list) => GridView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final Coffee coffee = list[index];
                return HomePageCoffeeListItem(
                  coffee: coffee,
                  onCardClick: () {
                    context.router.push(
                      CoffeeDetailsRoute(
                          coffee: coffee,
                          onFavoriteClick: () {
                            context.read<FavoriteCoffeesBloc>().add(
                                  FavoriteCoffeesEvent.update(coffee),
                                );
                          }),
                    );
                  },
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 230,
              ),
            ),
            error: (_, list, __) => GridView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final Coffee coffee = list[index];
                return HomePageCoffeeListItem(
                  coffee: coffee,
                  onCardClick: () {
                    context.router.push(
                      CoffeeDetailsRoute(
                          coffee: coffee,
                          onFavoriteClick: () {
                            context.read<FavoriteCoffeesBloc>().add(
                              FavoriteCoffeesEvent.update(coffee),
                            );
                          }),
                    );
                  },
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 230,
              ),
            ),
          );
        },
      ),
    );
  }
}
