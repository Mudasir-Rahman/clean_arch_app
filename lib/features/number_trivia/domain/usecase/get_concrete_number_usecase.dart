import 'package:clean_architecture_app/core/error/failure.dart';
import 'package:clean_architecture_app/core/usecase/usecase.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture_app/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcretNumberTrivia(params.number);
  }
}

class Params {
  final int number;

  const Params({required this.number});
}
