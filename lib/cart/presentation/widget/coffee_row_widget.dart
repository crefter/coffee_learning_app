import 'package:flutter/material.dart';

class CoffeeRowWidget extends StatelessWidget {
  const CoffeeRowWidget({
    Key? key,
    required this.text,
    required this.currency,
    required this.price,
    required this.styleText,
    required this.styleCurrency,
  }) : super(key: key);

  final TextStyle styleText;
  final TextStyle styleCurrency;
  final String text;
  final String currency;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: styleText),
        Text('$currency$price', style: styleCurrency),
      ],
    );
  }
}
