import 'dart:convert';

import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesLocalDatasource implements LocalDatasource<Coffee> {
  final SharedPreferences _sharedPreferences;
  final favorites = 'fav';

  FavoritesLocalDatasource(this._sharedPreferences);

  @override
  Future<List<Coffee>> get() async {
    final itemsJson = _sharedPreferences.getString(favorites) ?? '';
    if (itemsJson.isEmpty) {
      return [];
    }
    final map = jsonDecode(itemsJson);
    final List<Coffee> items =
        map.map<Coffee>((e) => Coffee.fromJson(e)).toList();
    return items;
  }

  @override
  Future<void> save(List<Coffee> data) async {
    if (data.isEmpty) {
      _sharedPreferences.setString(favorites, '');
      return;
    }
    final listJson = data.map((e) => e.toJson()).toList();
    final json = jsonEncode(listJson);
    await _sharedPreferences.setString(favorites, json);
  }
}
