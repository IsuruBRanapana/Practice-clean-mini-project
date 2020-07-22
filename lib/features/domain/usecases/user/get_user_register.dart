import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/request/user_register.dart';
import 'package:practice/features/domain/entities/user.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class GetUserRegister extends UseCase<User, Params> {
  final PracticeRepository repository;

  GetUserRegister(this.repository);

  @override
  Future<Either<Failure, User>> call(params) async {
    return await repository.registerUser(params.userRegister);
  }
}

class Params extends Equatable {
  final UserRegister userRegister;

  Params({@required this.userRegister});
}
