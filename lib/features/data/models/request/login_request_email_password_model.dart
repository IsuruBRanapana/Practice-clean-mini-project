import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';

part 'login_request_email_password_model.g.dart';

@JsonSerializable()
class LoginRequestEmailPasswordModel extends LoginRequestEmailPassword {
  LoginRequestEmailPasswordModel({
    @required String email,
    @required String password,
  }) : super(email: email, password: password);

  factory LoginRequestEmailPasswordModel.fromJson(Map<String, dynamic> data) =>
      _$LoginRequestEmailPasswordModelFromJson(data);

  Map<String, dynamic> toJson() => _$LoginRequestEmailPasswordModelToJson(this);
}
