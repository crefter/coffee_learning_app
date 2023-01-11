
import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:learning/home/presentation/bloc/coffee_list/coffee_list_bloc.dart';
import 'package:mockito/annotations.dart';

import 'coffee_list_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CoffeeRepository>()])
void main() {
  late CoffeeListBloc bloc;
  late CoffeeRepository coffeeRepository;
  setUp(() {
    coffeeRepository = MockCoffeeRepository();
    bloc = CoffeeListBloc(coffeeRepository: coffeeRepository);
  });
  group('Coffee list bloc tests', () {

  });
}