import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/data/repository/coffee_repositoty_impl.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:learning/core/data/repository/cart_repository_impl.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:learning/core/presentation/app_router.gr.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:learning/home/presentation/bloc/coffee_list/coffee_list_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CoffeeRepository _coffeeRepository = MockCoffeeRepository();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CoffeeListBloc(
            coffeeRepository: _coffeeRepository,
          )..add(const CoffeeListEvent.startLoading()),
        ),
        BlocProvider(
          create: (_) => FavoriteCoffeesBloc(
            coffeeRepository: _coffeeRepository,
          ),
        ),
        BlocProvider(
          create: (_) => CartBloc(
            cartRepository: MockCartRepository(),
          )..add(const CartEvent.load()),
          lazy: false,
        ),
      ],
      child: SafeArea(
        child: AutoTabsScaffold(
          routes: const [
            HomeEmptyRoute(),
            CartRoute(),
            FavoritesRoute(),
            NotificationsRoute(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              //backgroundColor: theme.colorScheme.surface,
              onTap: tabsRouter.setActiveIndex,
              selectedIconTheme: theme.iconTheme.copyWith(
                color: theme.iconTheme
                    .copyWith(color: const Color.fromARGB(255, 239, 227, 200))
                    .color,
                shadows: [
                  Shadow(
                      color: theme.iconTheme
                          .copyWith(
                              color: const Color.fromARGB(38, 239, 227, 200))
                          .color!,
                      blurRadius: 20)
                ],
              ),
              unselectedIconTheme: theme.iconTheme.copyWith(
                color: theme.iconTheme
                    .copyWith(color: const Color.fromARGB(255, 239, 227, 200))
                    .color!
                    .withOpacity(0.4),
              ),
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home_filled,
                    size: 26,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    size: 26,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: Icon(
                    Icons.favorite,
                    size: 26,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Notifications',
                  icon: Icon(
                    Icons.notifications,
                    size: 26,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
