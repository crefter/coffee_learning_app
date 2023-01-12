import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_all_coffee_exception.dart';
import 'package:learning/core/data/exception/receiving_favorites_exception.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';

class CoffeeRepositoryImpl implements CoffeeRepository {
  final RemoteDatasource<Coffee> coffeeRemoteDatasource;
  final RemoteDatasource<Coffee> favoritesRemoteDatasource;
  final LocalDatasource<Coffee> favoritesLocalDatasource;

  CoffeeRepositoryImpl(
    this.coffeeRemoteDatasource,
    this.favoritesRemoteDatasource,
    this.favoritesLocalDatasource,
  );

  @override
  Future<List<Coffee>> getAll() async {
    try {
      final data = await coffeeRemoteDatasource.get();
      return data;
    } on ReceivingAllCoffeeException {
      rethrow;
    }
  }

  @override
  Future<List<Coffee>> getFavorites() async {
    try {
      final data = await favoritesRemoteDatasource.get();
      return data;
    } on ReceivingFavoritesException catch (e) {
      final data = await favoritesLocalDatasource.get();
      throw ReceivingFavoritesException(data, e.message);
    }
  }

  @override
  Future<void> saveFavorites(List<Coffee> favorites) async {
    await favoritesLocalDatasource.save(favorites);
  }
}
