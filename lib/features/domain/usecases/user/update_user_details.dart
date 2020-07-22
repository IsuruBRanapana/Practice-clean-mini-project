import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:practice/core/errors/failures.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/user.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';

class UpdateUserDetails extends UseCase<User, Params> {
  final PracticeRepository repository;

  UpdateUserDetails(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return await repository.updateUserDetail(params.user);
  }
}

class Params extends Equatable {
  final User user;

  Params({@required this.user});
}
