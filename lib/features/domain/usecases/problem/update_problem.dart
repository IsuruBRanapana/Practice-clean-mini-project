import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class UpdateProblem extends UseCase<Problem,Params>{
  final PracticeRepository repository;
  UpdateProblem(this.repository);

  @override
  Future<Either<Failure, Problem>> call(Params params) async{
    return await repository.updateProblem(params.problem);
  }

}
class Params extends Equatable{
  final Problem problem;
  Params({@required this.problem});
}