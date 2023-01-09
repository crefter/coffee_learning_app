import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:learning/cart/presentation/page/cart_page.dart';
import 'package:learning/core/presentation/coffee_details_page/coffee_details_page.dart';
import 'package:learning/favorites/presentation/favorites_page.dart';
import 'package:learning/home/presentation/home_page/home_page.dart';
import 'package:learning/main/presentation/main_page.dart';
import 'package:learning/notifications/presentation/notifications_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: '/',
    page: MainPage,
    children: <AutoRoute>[
      AutoRoute(
        path: 'home',
        name: 'HomeEmptyRoute',
        page: EmptyRouterPage,
        children: <AutoRoute>[
          AutoRoute(
            path: '',
            page: HomePage,
          ),
          AutoRoute(
            path: 'coffee',
            page: CoffeeDetailsPage,
          )
        ],
      ),
      AutoRoute(
        path: 'cart',
        page: CartPage,
      ),
      AutoRoute(
        path: 'fav',
        page: FavoritesPage,
      ),
      AutoRoute(
        path: 'notifies',
        page: NotificationsPage,
      ),
    ],
  ),
])
class $AppRoute {}
