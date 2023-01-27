// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../../cart/presentation/page/cart_page.dart' as _i3;
import '../../favorites/presentation/favorites_page.dart' as _i4;
import '../../home/presentation/home_page/home_page.dart' as _i5;
import '../../main/presentation/main_page.dart' as _i1;
import '../domain/entity/coffee.dart' as _i9;
import 'coffee_details_page/coffee_details_page.dart' as _i6;

class AppRoute extends _i7.RootStackRouter {
  AppRoute([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    HomeEmptyRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CartPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FavoritesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    CoffeeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CoffeeDetailsRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.CoffeeDetailsPage(
          key: args.key,
          onFavoriteClick: args.onFavoriteClick,
          coffee: args.coffee,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeEmptyRoute.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeEmptyRoute.name,
                ),
                _i7.RouteConfig(
                  CoffeeDetailsRoute.name,
                  path: 'coffee',
                  parent: HomeEmptyRoute.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: MainRoute.name,
            ),
            _i7.RouteConfig(
              FavoritesRoute.name,
              path: 'fav',
              parent: MainRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeEmptyRoute extends _i7.PageRouteInfo<void> {
  const HomeEmptyRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeEmptyRoute.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeEmptyRoute';
}

/// generated route for
/// [_i3.CartPage]
class CartRoute extends _i7.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: 'cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i4.FavoritesPage]
class FavoritesRoute extends _i7.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: 'fav',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.CoffeeDetailsPage]
class CoffeeDetailsRoute extends _i7.PageRouteInfo<CoffeeDetailsRouteArgs> {
  CoffeeDetailsRoute({
    _i8.Key? key,
    required void Function() onFavoriteClick,
    required _i9.Coffee coffee,
  }) : super(
          CoffeeDetailsRoute.name,
          path: 'coffee',
          args: CoffeeDetailsRouteArgs(
            key: key,
            onFavoriteClick: onFavoriteClick,
            coffee: coffee,
          ),
        );

  static const String name = 'CoffeeDetailsRoute';
}

class CoffeeDetailsRouteArgs {
  const CoffeeDetailsRouteArgs({
    this.key,
    required this.onFavoriteClick,
    required this.coffee,
  });

  final _i8.Key? key;

  final void Function() onFavoriteClick;

  final _i9.Coffee coffee;

  @override
  String toString() {
    return 'CoffeeDetailsRouteArgs{key: $key, onFavoriteClick: $onFavoriteClick, coffee: $coffee}';
  }
}
