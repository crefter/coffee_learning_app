import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning/core/data/exception/receiving_cart_exception.dart';
import 'package:learning/core/domain/entity/coffee_item_order.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;

  CartBloc({required this.cartRepository}) : super(const CartState.empty()) {
    on<CartEvent>((event, emit) async {
      await event.map<Future<void>>(
        add: (event) => _onAdd(event, emit),
        delete: (event) => _onDelete(event, emit),
        load: (event) => _onLoad(event, emit),
        plus: (event) => _onPlus(event, emit),
        minus: (event) => _onMinus(event, emit),
      );
    });
  }

  Future<void> _onAdd(_CartEventAdd event, Emitter<CartState> emit) async {
    final List<CoffeeItemOrder> items = List.of(
      state.maybeWhen(
        orElse: () => [],
        loaded: (list) => list,
        error: (list, _) => list,
      ),
    );
    final filtered =
        items.where((element) => element.coffee == event.item.coffee).toList();
    if (filtered.isNotEmpty) {
      int index = items.indexWhere(
        (element) => element.coffee == event.item.coffee,
      );
      items[index] = items[index].copyWith(
        count: items[index].count + 1,
      );
    } else {
      items.add(event.item);
    }
    emit(CartState.loaded(items));
    await cartRepository.save(items);
  }

  Future<void> _onDelete(
      _CartEventDelete event, Emitter<CartState> emit) async {
    final List<CoffeeItemOrder> items = List.of(
      state.maybeWhen(
        orElse: () => [],
        loaded: (list) => list,
        error: (list, _) => list,
      ),
    );
    if (items.isEmpty) {
      emit(const CartState.empty());
      return;
    }
    items.removeAt(event.index);
    if (items.isEmpty) {
      emit(const CartState.empty());
    } else {
      emit(CartState.loaded(items));
    }
    await cartRepository.save(items);
  }

  Future<void> _onLoad(_CartEventLoad event, Emitter<CartState> emit) async {
    emit(const CartState.loading());
    try {
      final List<CoffeeItemOrder> items = await cartRepository.get();
      if (items.isEmpty) {
        emit(const CartState.empty());
      } else {
        emit(CartState.loaded(items));
        await cartRepository.save(items);
      }
    } on ReceivingCartException catch (e) {
       emit(CartState.error(e.items, e.message));
    }
  }

  Future<void> _onPlus(_CartEventPlus event, Emitter<CartState> emit) async {
    final List<CoffeeItemOrder> items = List.of(
      state.maybeWhen(
        orElse: () => [],
        loaded: (list) => list,
        error: (list, _) => list,
      ),
    );

    items[event.index] = items[event.index].copyWith(
      count: items[event.index].count + 1,
    );

    emit(CartState.loaded(items));
    await cartRepository.save(items);
  }

  Future<void> _onMinus(_CartEventMinus event, Emitter<CartState> emit) async {
    final List<CoffeeItemOrder> items = List.of(
      state.maybeWhen(
        orElse: () => [],
        loaded: (list) => list,
        error: (list, _) => list,
      ),
    );
    if (items[event.index].count > 1) {
      items[event.index] = items[event.index].copyWith(
        count: items[event.index].count - 1,
      );
      emit(CartState.loaded(items));
      await cartRepository.save(items);
    } else {
      add(CartEvent.delete(event.index));
    }
  }
}
