import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class UserRegister extends Equatable {
  final String name;
  final String email;
  final String area;
  final String telNo;
  final String password;

  UserRegister({
    @required this.name,
    @required this.email,
    @required this.area,
    @required this.telNo,
    @required this.password,
  }) : super([name, email, area, telNo, password]);
}
