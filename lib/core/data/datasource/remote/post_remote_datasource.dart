import 'package:learning/core/data/datasource/remote/remote_datasource.dart';

abstract class PostRemoteDatasource<T> implements RemoteDatasource<T> {
  Future<void> post(List<T> items);
}