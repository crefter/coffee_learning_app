import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class RowNameAndRatingWidget extends StatelessWidget {
  const RowNameAndRatingWidget({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          coffee.name,
          style: theme.textTheme.titleMedium?.copyWith(fontSize: 16),
        ),
        const SizedBox(width: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 12,
              color: theme.iconTheme
                  .copyWith(
                    color: const Color.fromARGB(255, 211, 166, 1),
                  )
                  .color,
            ),
            const SizedBox(width: 5),
            Text(
              '${coffee.rating}',
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontSize: 12, height: 1),
            ),
          ],
        )
      ],
    );
  }
}
