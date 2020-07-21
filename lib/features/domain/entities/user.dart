import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String area;
  final String telNo;

  User({
    @required this.uid,
    @required this.name,
    @required this.telNo,
    this.email,
    this.area,
  }) : super([uid, name, email, area, telNo]);
}
