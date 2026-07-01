import 'package:clean_architecture_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, Params> {
  Future<Either<Failure, type>> call(Params params);
}

class NoParams {
  NoParams();
}
