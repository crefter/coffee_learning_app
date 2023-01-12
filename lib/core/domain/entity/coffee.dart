import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee.freezed.dart';
part 'coffee.g.dart';

@JsonEnum(valueField: 'typeName')
enum CoffeeType {
  cappuccino('Cappuccino'),
  latte('Latte'),
  americano('Americano'),
  espresso('Espresso'),
  flatWhite("Flat White");

  const CoffeeType(
    this.typeName,
  );

  final String typeName;
}

@freezed
class Coffee with _$Coffee {
  const factory Coffee(int id, CoffeeType type, String name, String description, double price, double rating,
      String image, String currency) = _Coffee;

  factory Coffee.fromJson(Map<String, dynamic> json) =>
      _$CoffeeFromJson(json);
}
