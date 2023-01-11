import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning/core/domain/entity/coffee.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';

part 'coffee_list_event.dart';

part 'coffee_list_state.dart';

part 'coffee_list_bloc.freezed.dart';

class CoffeeListBloc extends Bloc<CoffeeListEvent, CoffeeListState> {
  CoffeeRepository coffeeRepository;

  CoffeeListBloc({
    required this.coffeeRepository,
  }) : super(const CoffeeListState.empty()) {
    on<CoffeeListEvent>((event, emit) async {
      await event.map<Future<void>>(
        startLoading: (event) => _startLoading(event, emit),
        typeSelected: (event) => _typeSelected(event, emit),
      );
    });
  }

  Future<void> _startLoading(_StartLoadingCoffeeListEvent event,
      Emitter<CoffeeListState> emit,) async {
    emit(const CoffeeListState.loading());
    try {
      final List<Coffee> coffees = await coffeeRepository.getAll();
      final List<Coffee> filteredCoffees =
      coffees.where((coffee) => coffee.type.index == 0).toList();
      emit(CoffeeListState.loaded(coffees, filteredCoffees));
    } catch (error) {
      emit(CoffeeListState.error(error.toString()));
    }
  }

  Future<void> _typeSelected(_TypeSelectedCoffeeListEvent event,
      Emitter<CoffeeListState> emit,) async {
    final List<Coffee> coffees = state.maybeWhen(
        orElse: () => <Coffee>[], loaded: (coffees, _) => coffees);
    emit(
      CoffeeListState.loaded(
        coffees,
        coffees.where((coffee) => coffee.type == event.type).toList(),
      ),
    );
  }
}
