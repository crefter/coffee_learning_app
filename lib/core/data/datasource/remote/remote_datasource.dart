abstract class RemoteDatasource<T> {
  Future<List<T>> get();
  Future<void> post(List<T> items);
}