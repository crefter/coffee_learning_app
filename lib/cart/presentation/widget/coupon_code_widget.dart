import 'package:flutter/material.dart';
import 'package:learning/cart/presentation/widget/coupon_custom_clipper.dart';

class CouponCodeWidget extends StatelessWidget {
  const CouponCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomPaint(
      painter: CouponCustomPaint(
        theme.colorScheme.onTertiaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 30),
          Text(
            'Apply Coupon Code',
            style: theme.textTheme.labelSmall,
          ),
          const Spacer(),
          IconButton(
            splashRadius: 20,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: theme.iconTheme
                  .copyWith(
                    color: const Color.fromARGB(255, 239, 227, 200),
                  )
                  .color,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
