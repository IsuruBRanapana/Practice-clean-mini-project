
import 'package:equatable/equatable.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';

abstract class LoginState extends Equatable {
  LoginState([List props = const<dynamic>[]]);
}

class InitialLoginState extends LoginState {}

class UserLoading extends LoginState{}

class UserLoaded extends LoginState{
  final LoginResponse user;
  UserLoaded({this.user}):super([user]);
}

class UserError extends LoginState{
  final String message;
  UserError({this.message}):super([message]);
}
