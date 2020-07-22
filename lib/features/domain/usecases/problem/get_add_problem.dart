import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/entities/request/add_problem.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetAddProblem extends UseCase<Problem,Params>{
  final PracticeRepository repository;
  GetAddProblem(this.repository);
  @override
  Future<Either<Failure, Problem>> call(Params params) async{
    return await repository.addProblem(params.problem);
  }
}

class Params extends Equatable{
  final AddProblem problem;

  Params({@required this.problem});
}