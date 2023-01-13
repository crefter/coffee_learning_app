import 'package:flutter/material.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/presentation/coffee_details_page/coffee_picture_widget.dart';
import 'package:learning/core/presentation/coffee_details_page/description_widget.dart';
import 'package:learning/core/presentation/coffee_details_page/row_name_and_rating_widget.dart';
import 'package:learning/core/presentation/coffee_details_page/row_price_and_buy_button_widget.dart';
import 'package:learning/core/presentation/coffee_details_page/row_type_and_heart_widget.dart';

class CoffeeDetailsPage extends StatefulWidget {
  const CoffeeDetailsPage({
    Key? key,
    required this.onFavoriteClick,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;
  final void Function() onFavoriteClick;

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  int? _index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoffeePictureWidget(
                  image: widget.coffee.image,
                ),
                const SizedBox(height: 16),
                RowTypeAndHeartWidget(
                  coffee: widget.coffee,
                  onFavoriteClick: widget.onFavoriteClick,
                ),
                RowNameAndRatingWidget(
                  coffee: widget.coffee,
                ),
                const SizedBox(height: 8),
                DescriptionWidget(
                  coffee: widget.coffee,
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choice of Milk',
                      style: theme.textTheme.labelMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List<Widget>.generate(Milk.values.length, (index) {
                        return ChoiceChip(
                          labelStyle: _index == index
                              ? theme.textTheme.titleSmall
                              : theme.textTheme.labelSmall,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              width: 1,
                              color: theme.chipTheme.selectedColor!,
                            ),
                          ),
                          label: Text(Milk.values[index].milkName),
                          selected: index == _index,
                          onSelected: (selected) {
                            setState(() {
                              _index = selected ? index : null;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                RowPriceAndBuyButtonWidget(
                  index: _index!,
                  coffee: widget.coffee,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
