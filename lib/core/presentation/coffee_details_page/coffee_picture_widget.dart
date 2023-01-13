import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CoffeePictureWidget extends StatelessWidget {
  const CoffeePictureWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 343,
        height: 411,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  image,
                  width: 343,
                  height: 411,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 24,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: theme.colorScheme.onTertiary,
                  boxShadow: [
                    BoxShadow(
                        color: theme.colorScheme
                            .copyWith(
                              onTertiary: const Color.fromARGB(38, 0, 0, 0),
                            )
                            .onTertiary,
                        blurRadius: 15,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.inner),
                  ],
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 1,
                  hoverColor: Colors.red,
                  onPressed: () async {
                    await context.router.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
