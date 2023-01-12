import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final LocalDatasource<CoffeeItemOrder> localDatasource;
  final RemoteDatasource<CoffeeItemOrder> remoteDatasource;

  CartRepositoryImpl({
    required this.localDatasource,
    required this.remoteDatasource,
  });

  @override
  Future<List<CoffeeItemOrder>> get() async {
    List<CoffeeItemOrder> result = await remoteDatasource.get();
    if (result.isEmpty) {
      result = await localDatasource.get();
    }
    return result;
  }

  @override
  Future<void> save(List<CoffeeItemOrder> items) async {
    await localDatasource.save(items);
  }
}
