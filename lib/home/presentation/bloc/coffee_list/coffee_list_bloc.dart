import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning/core/data/exception/receiving_all_coffee_exception.dart';
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
        startLoading: (event) => _onStartLoading(event, emit),
        typeSelected: (event) => _onTypeSelected(event, emit),
        search: (event) => _onSearch(event, emit),
      );
    }, transformer: droppable());
  }

  Future<void> _onStartLoading(
    _StartLoadingCoffeeListEvent event,
    Emitter<CoffeeListState> emit,
  ) async {
    emit(const CoffeeListState.loading());
    try {
      final List<Coffee> coffees = await coffeeRepository.getAll();
      final List<Coffee> filteredCoffees =
          coffees.where((coffee) => coffee.type.index == 0).toList();
      emit(CoffeeListState.loaded(coffees, filteredCoffees, null));
    } on ReceivingAllCoffeeException catch (e) {
      final List<Coffee> filteredCoffees =
          e.items.where((coffee) => coffee.type.index == 0).toList();
      emit(CoffeeListState.error(e.items, filteredCoffees, e.message));
    }
  }

  Future<void> _onTypeSelected(
    _TypeSelectedCoffeeListEvent event,
    Emitter<CoffeeListState> emit,
  ) async {
    final List<Coffee> coffees = state.maybeWhen(
        orElse: () => <Coffee>[], loaded: (coffees, _, __) => coffees);
    emit(
      CoffeeListState.loaded(coffees,
          coffees.where((coffee) => coffee.type == event.type).toList(), null),
    );
  }

  Future<void> _onSearch(
    _CoffeeListEventSearch event,
    Emitter<CoffeeListState> emit,
  ) async {
    if (state is ErrorCoffeeListState) {
      return;
    }
    final queryCoffees = state.maybeWhen(
      orElse: () => null,
      loaded: (_, __, list) => list,
    );
    final coffees = state.maybeWhen(
      orElse: () => <Coffee>[],
      loaded: (allCoffees, _, __) => allCoffees,
    );
    final filteredCoffees = state.maybeWhen(
      orElse: () => <Coffee>[],
      loaded: (_, filteredCoffees, __) => filteredCoffees,
    );
    if (coffees.isEmpty) {
      return;
    }
    if (event.query.length < 3) {
      if (queryCoffees != null) {
        emit(CoffeeListState.loaded(coffees, filteredCoffees, null));
      }
      return;
    }
    emit(const CoffeeListState.loading());
    final queryFilteredList = coffees.where(
      (element) => element.name.toLowerCase().contains(event.query.toLowerCase()),
    ).toList();
    if (queryFilteredList.isEmpty) {
      emit(CoffeeListState.loaded(coffees, filteredCoffees, null));
    } else {
      emit(CoffeeListState.loaded(coffees, filteredCoffees, queryFilteredList));
    }
  }
}
