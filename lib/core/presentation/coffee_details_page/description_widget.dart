import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Text(
      coffee.description,
      style: Theme.of(context)
          .textTheme
          .labelLarge
          ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
    );
  }
}
