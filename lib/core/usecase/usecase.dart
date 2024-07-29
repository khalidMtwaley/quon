
import 'package:dartz/dartz.dart';
import 'package:quon/core/error/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failures, SuccessType>> call(Params params);
  
}

class NoParams{}