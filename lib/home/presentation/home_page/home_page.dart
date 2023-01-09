import 'package:flutter/material.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_list.dart';
import 'package:learning/home/presentation/home_page/home_page_coffee_navigation.dart';
import 'package:learning/home/presentation/home_page/home_page_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double topPadding = 16.0;

  final double leftGap = 27;

  final double rightGap = 26;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const HomePageSliverAppBar(),
          ];
        },
        body: Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const HomePageCoffeeNavigation(),
              SizedBox(width: leftGap),
              const HomePageCoffeeList(),
              SizedBox(width: rightGap),
            ],
          ),
        ),
      ),
    );
  }
}
