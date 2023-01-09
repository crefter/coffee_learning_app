import 'package:flutter_test/flutter_test.dart';
import 'package:learning/core/domain/repository/cart_repository.dart';
import 'package:learning/core/presentation/bloc/cart/cart_bloc.dart';
import 'package:mockito/annotations.dart';

import 'cart_bloc_test.mocks.dart';

const loading = TypeMatcher<CartStateLoading>();
const empty = TypeMatcher<CartStateEmpty>();
const loaded = TypeMatcher<CartStateLoaded>();
const error = TypeMatcher<CartStateError>();

@GenerateNiceMocks([MockSpec<CartRepository>()])
void main() {
  late CartBloc cartBloc;
  late CartRepository mockRepository;
  setUp(() {
    mockRepository = MockCartRepository();
    cartBloc = CartBloc(cartRepository: mockRepository);
  });
  tearDown(() async {
    await cartBloc.close();
  });
  group('Cart bloc tests', () {
    test('should initial state is empty', () {

    });
  });
}
