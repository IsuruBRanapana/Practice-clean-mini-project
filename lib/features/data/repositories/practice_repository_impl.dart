//TODO: add typedef to choose login or register

import 'package:dartz/dartz.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/features/data/models/request/add_problem_model.dart';
import 'package:practice/features/data/models/request/user_register_model.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';
import 'package:practice/features/domain/entities/user.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class PracticeRepositoryImpl implements PracticeRepository{
  @override
  Future<Either<Failure, Problem>> addProblem(AddProblemModel addProb) {
    // TODO: implement addProblem
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Problem>> getAllProblems() {
    // TODO: implement getAllProblems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Problem>> getCategorizeProblems(String category) {
    // TODO: implement getCategorizeProblems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Problem>> getDistrictProblems(String district) {
    // TODO: implement getDistrictProblems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LoginResponse>> getLogin(LoginRequestEmailPassword loginRequestEmailPassword) {
    // TODO: implement getLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Problem>> getUserProblems(String uid) {
    // TODO: implement getUserProblems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> registerUser(UserRegisterModel userRegisterModel) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Problem>> updateProblem(Problem problem) {
    // TODO: implement updateProblem
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> updateUserDetail(User user) {
    // TODO: implement updateUserDetail
    throw UnimplementedError();
  }

}