import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:learning/cart/presentation/widget/cart_widget.dart';
import 'package:learning/cart/presentation/widget/coupon_code_widget.dart';
import 'package:learning/cart/presentation/widget/pay_now_button_widget.dart';
import 'package:learning/cart/presentation/widget/taxes_widget.dart';
import 'package:learning/cart/presentation/widget/total_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 46),
                Text(
                  'Cart',
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                const CartWidget(),
                DottedBorder(
                  padding: EdgeInsets.zero,
                  dashPattern: const [10, 5],
                  color: Colors.white.withOpacity(0.2),
                  child: const Divider(height: 0),
                ),
                const SizedBox(height: 20),
                const CouponCodeWidget(),
                const SizedBox(height: 20),
                const TaxesWidget(),
                const SizedBox(height: 20),
                DottedBorder(
                  padding: EdgeInsets.zero,
                  dashPattern: const [10, 5],
                  color: Colors.white.withOpacity(0.2),
                  child: const Divider(height: 0),
                ),
                const SizedBox(height: 17),
                const TotalWidget(),
                const SizedBox(height: 28),
                const PayNowButtonWidget(),
                const SizedBox(height: 36),
              ],
            ),
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
      ),
    );
  }
}
