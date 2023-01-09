import 'package:flutter/material.dart';
import 'package:learning/core/presentation/widget/stylized_text_button.dart';

class PayNowButtonWidget extends StatelessWidget {
  const PayNowButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StylizedTextButton(
        text: 'PAY NOW',
        onTap: () {},
      ),
    );
  }
}
