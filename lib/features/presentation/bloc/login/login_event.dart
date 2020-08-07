
import 'package:equatable/equatable.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([List props=const<dynamic>[]]);
}

class FetchUserEvent extends LoginEvent{
  final LoginRequestEmailPassword loginRequestEmailPassword;

  FetchUserEvent(this.loginRequestEmailPassword):super([loginRequestEmailPassword]);
}
