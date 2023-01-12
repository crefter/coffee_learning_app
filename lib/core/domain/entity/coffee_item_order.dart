import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning/core/domain/entity/coffee.dart';

part 'coffee_item_order.freezed.dart';

part 'coffee_item_order.g.dart';

@JsonEnum(valueField: 'milkName')
enum Milk {
  oatMilk('Oat Milk'),
  soyMilk('Soy Milk'),
  almondMilk('Almond Milk');

  const Milk(this.milkName);

  final String milkName;
}

@freezed
class CoffeeItemOrder with _$CoffeeItemOrder {
  const factory CoffeeItemOrder({
    required Coffee coffee,
    @Default(Milk.oatMilk) Milk milk,
    required int count,
  }) = _CoffeeItemOrder;

  factory CoffeeItemOrder.fromJson(Map<String, dynamic> json) =>
      _$CoffeeItemOrderFromJson(json);
}
