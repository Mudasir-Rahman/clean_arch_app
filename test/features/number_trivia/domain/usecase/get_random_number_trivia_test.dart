// import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
// import 'package:clean_architecture_app/features/number_trivia/domain/repository/number_trivia_repository.dart';
// import 'package:clean_architecture_app/features/number_trivia/domain/usecase/get_random_number_trivia_usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'get_concrete_number_usecase_test.mocks.dart';

// class MockNumberTriviaRepository extends Mock
//     implements NumberTriviaRepository {}

// @GenerateMocks([NumberTriviaRepository])
// void main() {
//   late GetRandomNumberTriviaUsecase usecase;
//   late MockNumberTriviaRepository mockNumberTriviaRepository;
//   setUp(() {
//     mockNumberTriviaRepository = MockNumberTriviaRepository();
//     usecase = GetRandomNumberTriviaUsecase(mockNumberTriviaRepository);
//   });
//   final tnumberTrivia = NumberTrivia(text: 'test trivia', number: 1);
//   test('should get trivia for the number from the repository', () async {
//     // arrange
//     when(
//       mockNumberTriviaRepository.getRandomNumberTrivia(),
//     ).thenAnswer((_) async => Right(tnumberTrivia));
//     // act
//     final result = await usecase(NoParams());
//     // assert
//     expect(result, tnumberTrivia);
//     verify(mockNumberTriviaRepository.getRandomNumberTrivia());
//     verifyNoMoreInteractions(mockNumberTriviaRepository);
//   });
// }
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_architecture_app/core/usecase/usecase.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/usecase/get_random_number_trivia_usecase.dart';

import 'get_concrete_number_usecase_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetRandomNumberTriviaUsecase usecase;
  late MockNumberTriviaRepository mockRepository;

  setUp(() {
    mockRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTriviaUsecase(mockRepository);
  });

  final tNumberTrivia = NumberTrivia(text: 'test trivia', number: 1);

  test('should get random trivia from repository', () async {
    when(
      mockRepository.getRandomNumberTrivia(),
    ).thenAnswer((_) async => Right(tNumberTrivia));

    final result = await usecase(NoParams());

    expect(result, Right(tNumberTrivia));

    verify(mockRepository.getRandomNumberTrivia());

    verifyNoMoreInteractions(mockRepository);
  });
}
