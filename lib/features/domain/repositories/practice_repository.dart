import 'package:dartz/dartz.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/features/domain/entities/problem.dart';

abstract class PracticeRepository{
  Future<Either<Failure,Problem>> getAllProblems();
  Future<Either<Failure,Problem>> getUserProblems(String uid);
  Future<Either<Failure,Problem>> getCategorizeProblems(String category);
  Future<Either<Failure,Problem>> getDistrictProblems(String district);
}