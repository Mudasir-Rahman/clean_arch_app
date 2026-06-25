import 'package:clean_architecture_app/core/error/failure.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcretNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
