import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/usecase/get_concrete_number_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
  final tnumber = 1;
  final tnumberTrivia = NumberTrivia(text: 'test trivia', number: 1);
  test('should get trivia for the number from the repository', () async {
    // arrange
    when(
      mockNumberTriviaRepository.getConcretNumberTrivia(any),
    ).thenAnswer((_) async => Right(tnumberTrivia));
    // act
    final result = await usecase.execute(number: tnumber);
    // assert
    expect(result, tnumberTrivia);
    verify(mockNumberTriviaRepository.getConcretNumberTrivia(tnumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
