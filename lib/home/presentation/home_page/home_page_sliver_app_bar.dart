import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageSliverAppBar extends StatelessWidget {
  const HomePageSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: false,
      expandedHeight: 180.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'deja',
                        style: theme.textTheme.headlineMedium,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Brew',
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color.fromARGB(255, 220, 170, 112),
                          )),
                      child: const Image(
                        width: 44,
                        height: 44,
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  style: theme.textTheme.displayMedium,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: theme.colorScheme.secondaryContainer,
                    hintText: "Browse your favorite coffee...",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20,
                      ),
                      child: SvgPicture.asset(
                        "assets/search.svg",
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      maxHeight: 20,
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    hintStyle: theme.textTheme.displayMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
