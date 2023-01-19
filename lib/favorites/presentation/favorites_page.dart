import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:learning/core/presentation/widget/item_widget.dart';
import 'package:learning/favorites/presentation/widget/favorite_item_description_widget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 46),
                Text(
                  'Favorite coffees',
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                BlocBuilder<FavoriteCoffeesBloc, FavoriteCoffeesState>(
                  builder: (context, state) {
                    return state.when(
                      empty: () => Center(
                        child: Text(
                          'No favorite coffees!',
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      ),
                      loaded: (favorites) => ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: favorites.length,
                        itemBuilder: (context, index) {
                          return ItemWidget<Coffee>(
                            itemChild: FavoriteItemDescriptionWidget(
                              coffee: favorites[index],
                            ),
                            onTapDeleteWidget: () =>
                                context.read<FavoriteCoffeesBloc>().add(
                                      FavoriteCoffeesEvent.update(
                                        favorites[index],
                                      ),
                                    ),
                          );
                        },
                      ),
                      error: (favorites, _) => ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: favorites.length,
                        itemBuilder: (context, index) {
                          return ItemWidget<Coffee>(
                            itemChild: FavoriteItemDescriptionWidget(
                              coffee: favorites[index],
                            ),
                            onTapDeleteWidget: () =>
                                context.read<FavoriteCoffeesBloc>().add(
                                      FavoriteCoffeesEvent.update(
                                        favorites[index],
                                      ),
                                    ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
