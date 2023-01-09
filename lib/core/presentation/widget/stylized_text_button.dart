import 'package:flutter/material.dart';

class StylizedTextButton extends StatelessWidget {
  const StylizedTextButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: const Color.fromARGB(255, 74, 43, 41),
            ),
      ),
    );
  }
}
