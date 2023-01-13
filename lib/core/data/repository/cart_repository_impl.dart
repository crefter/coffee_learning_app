import 'package:learning/core/data/datasource/local/local_datasource.dart';
import 'package:learning/core/data/datasource/remote/remote_datasource.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
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
    try {
      final result = await remoteDatasource.get();
      return result;
    } on ReceivingCartException catch (e) {
      final result = await localDatasource.get();
      throw ReceivingCartException(result, e.message);
    }
  }

  @override
  Future<void> save(List<CoffeeItemOrder> items) async {
    await remoteDatasource.post(items);
    await localDatasource.save(items);
  }
}
