import 'package:clean_architecture_app/core/error/failure.dart';
import 'package:clean_architecture_app/core/usecase/usecase.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTriviaUsecase extends UseCase<NumberTrivia, NoParams> {
  NumberTriviaRepository repository;
  GetRandomNumberTriviaUsecase(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
