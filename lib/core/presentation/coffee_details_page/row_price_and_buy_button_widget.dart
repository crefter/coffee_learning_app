import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/presentation/coffee_details_page/buy_now_button.dart';
import 'package:learning/core/presentation/coffee_details_page/price_widget.dart';

class RowPriceAndBuyButtonWidget extends StatelessWidget {
  const RowPriceAndBuyButtonWidget({
    Key? key,
    required this.index,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PriceWidget(
          coffee: coffee,
        ),
        const SizedBox(width: 35),
        BuyNowButton(
          coffee: coffee,
          index: index,
        ),
      ],
    );
  }
}
