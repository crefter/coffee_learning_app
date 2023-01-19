import 'package:learning/core/data/datasource/remote/post_remote_datasource.dart';

abstract class PGDRemoteDatasource<T> implements PostRemoteDatasource<T> {
  Future<void> delete(T item);
}