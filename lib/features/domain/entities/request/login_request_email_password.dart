import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class LoginRequestEmailPassword extends Equatable {
  final String email;
  final String password;

  LoginRequestEmailPassword({@required this.email, @required this.password})
      : super([email, password]);
}
