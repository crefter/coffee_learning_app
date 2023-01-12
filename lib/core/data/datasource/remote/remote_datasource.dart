abstract class RemoteDatasource<T> {
  Future<List<T>> get();
}