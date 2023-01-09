import 'package:flutter/material.dart';

class HomePageCoffeeListItemPicture extends StatelessWidget {
  const HomePageCoffeeListItemPicture({
    Key? key, required this.image, required this.rating,
  }) : super(key: key);

  final String image;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            image,
            width: 111,
            height: 111,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 41,
          height: 20,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 6),
              Icon(
                Icons.star,
                color: theme.iconTheme
                    .copyWith(color: const Color.fromARGB(255, 211, 166, 1))
                    .color,
                size: 11,
              ),
              const SizedBox(width: 4.5),
              Text(
                '$rating',
                style: theme.textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
