import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/repository/coffee_repository.dart';
import 'package:learning/core/presentation/bloc/favorite_coffees/favorite_coffees_bloc.dart';
import 'package:mockito/annotations.dart';

import 'favorite_coffees_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CoffeeRepository>()])
void main() {
  late CoffeeRepository coffeeRepository;
  late FavoriteCoffeesBloc bloc;
  setUp(() {
    coffeeRepository = MockCoffeeRepository();
    bloc = FavoriteCoffeesBloc(coffeeRepository: coffeeRepository);
  });
  group('Favorite coffees bloc tests', () {

  });
}