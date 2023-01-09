import 'package:flutter/material.dart';

class StylizedIconButton extends StatelessWidget {
  const StylizedIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final Icon icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: icon,
    );
  }
}
