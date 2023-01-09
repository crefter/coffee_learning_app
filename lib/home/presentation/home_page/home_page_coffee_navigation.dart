import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/home/presentation/bloc/coffee_list/coffee_list_bloc.dart';

class HomePageCoffeeNavigation extends StatefulWidget {
  const HomePageCoffeeNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageCoffeeNavigation> createState() =>
      _HomePageCoffeeNavigationState();
}

class _HomePageCoffeeNavigationState extends State<HomePageCoffeeNavigation> {
  final double heightFactor = 0.596;

  final double width = 36;

  final double maxHeight = 442;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    final double navHeight = height * heightFactor;
    return SizedBox(
      width: width,
      height: navHeight,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(38),
            ),
            color: theme.colorScheme.tertiary,
          ),
          child: IntrinsicHeight(
            child: NavigationRail(
              selectedIconTheme: theme.iconTheme.copyWith(opacity: 0),
              unselectedIconTheme: theme.iconTheme.copyWith(opacity: 0),
              unselectedLabelTextStyle: theme.textTheme.displayMedium,
              selectedLabelTextStyle: theme.textTheme.displayLarge,
              labelType: NavigationRailLabelType.all,
              backgroundColor: theme.colorScheme.tertiary.withAlpha(0),
              destinations: [
                _destination('Cappuccino'),
                _destination('Latte'),
                _destination('Americano'),
                _destination('Espresso'),
                _destination('Flat White'),
              ],
              selectedIndex: _index,
              onDestinationSelected: (index) => setState(() {
                _index = index;
                context.read<CoffeeListBloc>().add(
                      CoffeeListEvent.typeSelected(CoffeeType.values[_index]),
                    );
              }),
            ),
          ),
        ),
      ),
    );
  }

  NavigationRailDestination _destination(String text) {
    const int turns = 3;
    return NavigationRailDestination(
      icon: const Icon(
        Icons.abc,
        size: 0,
      ),
      label: RotatedBox(
        quarterTurns: turns,
        child: Text(text),
      ),
    );
  }
}
