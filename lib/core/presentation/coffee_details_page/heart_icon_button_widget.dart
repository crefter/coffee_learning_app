import 'package:flutter/material.dart';

class HeartIconButtonWidget extends StatelessWidget {
  const HeartIconButtonWidget({
    Key? key,
    required this.onFavoriteClick,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final void Function() onFavoriteClick;
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 28,
      splashRadius: 20,
      onPressed: () {
        onFavoriteClick();
      },
      icon: icon,
      color: color,
    );
  }
}
