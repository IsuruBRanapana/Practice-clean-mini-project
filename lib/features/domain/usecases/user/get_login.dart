import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetLogin implements UseCase<LoginResponse, Params> {
  final PracticeRepository repository;

  GetLogin(this.repository);

  @override
  Future<Either<Failure, LoginResponse>> call(Params params) async {
    return await repository.getUser(params.loginRequestEmailPassword);
  }
}

class Params extends Equatable {
  final LoginRequestEmailPassword loginRequestEmailPassword;

  Params({@required this.loginRequestEmailPassword});
}
