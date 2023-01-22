import 'dart:convert';
import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartLocalDatasource implements LocalDatasource<CoffeeItemOrder> {
  final SharedPreferences _sharedPreferences;
  final cart = 'cart';

  CartLocalDatasource(this._sharedPreferences);

  @override
  Future<List<CoffeeItemOrder>> get() async {
    final itemsJson = _sharedPreferences.getString(cart) ?? '';
    if (itemsJson.isEmpty) {
      return <CoffeeItemOrder>[];
    }
    final map = jsonDecode(itemsJson);
    final List<CoffeeItemOrder> items =
        map.map<CoffeeItemOrder>((e) => CoffeeItemOrder.fromJson(e)).toList();
    return items;
  }

  @override
  Future<void> save(List<CoffeeItemOrder> data) async {
    if (data.isEmpty) {
      await _sharedPreferences.setString(cart, '');
      return;
    }
    final listJson = data.map((e) => e.toJson()).toList();
    final json = jsonEncode(listJson);
    await _sharedPreferences.setString(cart, json);
  }
}
