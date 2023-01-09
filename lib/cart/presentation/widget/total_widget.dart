import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/cart/presentation/widget/coffee_row_widget.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return CoffeeRowWidget(
          text: 'Grand Total',
          currency: '\u{20BD}',
          price: '${state.totalPrice}',
          styleText: theme.textTheme.labelMedium!.copyWith(fontSize: 20),
          styleCurrency: theme.textTheme.titleLarge!.copyWith(fontSize: 20),
        );
      },
    );
  }
}
