import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String name;
  final String email;
  final String area;
  final String telNo;

  User({
    @required this.name,
    @required this.telNo,
    this.email,
    this.area,
  }) : super([name, email, area, telNo]);
}
