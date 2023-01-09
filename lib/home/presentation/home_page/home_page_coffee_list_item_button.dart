import 'package:flutter/material.dart';

class HomePageCoffeeListItemButton extends StatelessWidget {
  final void Function() onTap;

  const HomePageCoffeeListItemButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 39,
      child: TextButton(
        style: theme.textButtonTheme.style?.copyWith(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onPressed: onTap,
        child: const Icon(Icons.add),
      ),
    );
  }
}
