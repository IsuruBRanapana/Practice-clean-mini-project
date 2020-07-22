import 'package:dartz/dartz.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';
import 'package:practice/features/domain/entities/user.dart';

abstract class PracticeRepository {
  Future<Either<Failure, Problem>> getAllProblems();

  Future<Either<Failure, Problem>> getUserProblems(String uid);

  Future<Either<Failure, Problem>> getCategorizeProblems(String category);

  Future<Either<Failure, Problem>> getDistrictProblems(String district);

  //TODO:user registration must consider again
  Future<Either<Failure, User>> registerUser();

  Future<Either<Failure,User>> updateUserDetail(User user);

  Future<Either<Failure, LoginResponse>> getLogin(
      LoginRequestEmailPassword params);
}
