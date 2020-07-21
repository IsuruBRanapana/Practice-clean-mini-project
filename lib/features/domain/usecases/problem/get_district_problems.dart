import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetDistrictProblems implements UseCase<Problem,Params>{
  final PracticeRepository repository;
  GetDistrictProblems(this.repository);
  @override
  Future<Either<Failure, Problem>> call(Params params) async{
    return await repository.getDistrictProblems(params.district);
  }
}

class Params extends Equatable{
  final String district;

  Params({@required this.district}):super([district]);
}