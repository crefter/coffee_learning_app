import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';

class FavoriteItemDescriptionWidget extends StatelessWidget {
  const FavoriteItemDescriptionWidget({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.1),
        ),
        height: 96,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                coffee.image,
                width: 72,
                height: 72,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.type.typeName,
                  style: theme.textTheme.labelMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  coffee.name,
                  style: theme.textTheme.labelMedium!.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      IconData(
                        int.parse(
                          coffee.currency,
                          radix: 16,
                        ),
                      ),
                      size: 16,
                      color: theme.textTheme.titleLarge!.color,
                    ),
                    Text(
                      '${coffee.price}',
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.1),
              ),
              height: 30,
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
