import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class LoginResponse extends Equatable{
  final String sessionTimeOut;

  LoginResponse({@required this.sessionTimeOut}):super([sessionTimeOut]);
}