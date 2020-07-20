import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Admin extends Equatable {
  final String uid;
  final String name;
  final String jobRole;
  final String email;
  final String telNo;
  final String workAt;

  Admin({
    @required this.uid,
    @required this.name,
    @required this.jobRole,
    @required this.telNo,
    this.email,
    this.workAt,
  }) : super([uid,name, jobRole, email, telNo, workAt]);
}
