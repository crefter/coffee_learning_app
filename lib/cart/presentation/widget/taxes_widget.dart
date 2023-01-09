import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/cart/presentation/widget/coffee_row_widget.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';

class TaxesWidget extends StatelessWidget {
  const TaxesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Column(
          children: [
            CoffeeRowWidget(
              text: 'Delivery Charges',
              currency: '\u{20BD}',
              price: '${state.deliveryCharges}',
              styleText: theme.textTheme.labelMedium!,
              styleCurrency: theme.textTheme.titleLarge!.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 8),
            CoffeeRowWidget(
              text: 'Taxes',
              currency: '\u{20BD}',
              price: '${state.taxes}',
              styleText: theme.textTheme.labelMedium!,
              styleCurrency: theme.textTheme.titleLarge!.copyWith(fontSize: 14),
            ),
          ],
        );
      },
    );
  }
}
