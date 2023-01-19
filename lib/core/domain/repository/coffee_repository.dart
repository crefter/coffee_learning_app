import 'package:learning/core/domain/entity/coffee.dart';

abstract class CoffeeRepository {
  Future<List<Coffee>> getAll();
  Future<List<Coffee>> getFavorites();
  Future<void> saveFavorites(List<Coffee> favorites, bool onlyLocal);
}