import 'package:dartz/dartz.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetAllProblems implements UseCase<Problem, NoParams> {
  final PracticeRepository repository;

  GetAllProblems(this.repository);

  @override
  Future<Either<Failure, Problem>> call(NoParams params) async {
    return await repository.getAllProblems();
  }
}
