import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetUserProblems implements UseCase<Problem, Params> {
  final PracticeRepository repository;

  GetUserProblems(this.repository);

  @override
  Future<Either<Failure, Problem>> call(Params params) async {
    return await repository.getUserProblems(params.ownerId);
  }
}

class Params extends Equatable {
  final String ownerId;

  Params({@required this.ownerId}) : super([ownerId]);
}
