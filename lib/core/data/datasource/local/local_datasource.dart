abstract class LocalDatasource<T> {
  Future<List<T>> get();
  Future<void> save(List<T> data);
}