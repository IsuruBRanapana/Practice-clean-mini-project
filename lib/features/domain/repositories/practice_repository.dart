import 'package:dartz/dartz.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/features/data/models/request/add_problem_model.dart';
import 'package:practice/features/data/models/request/user_register_model.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';
import 'package:practice/features/domain/entities/user.dart';

abstract class PracticeRepository {
  Future<Either<Failure, Problem>> getAllProblems();

  Future<Either<Failure, Problem>> getUserProblems(String uid);

  Future<Either<Failure, Problem>> getCategorizeProblems(String category);

  Future<Either<Failure, Problem>> getDistrictProblems(String district);

  Future<Either<Failure, User>> registerUser(UserRegisterModel regUser);

  Future<Either<Failure,Problem>> addProblem(AddProblemModel addProb);

  Future<Either<Failure,User>> updateUserDetail(User user);

  Future<Either<Failure,Problem>> updateProblem(Problem problem);

  Future<Either<Failure, LoginResponse>> getLogin(
      LoginRequestEmailPassword params);
}
