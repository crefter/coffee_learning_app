abstract class ReceivingException<T> extends Error {
  final List<T> items;
  final String message;

  ReceivingException(this.items, this.message);
}
