// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_email_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestEmailPasswordModel _$LoginRequestEmailPasswordModelFromJson(
    Map<String, dynamic> json) {
  return LoginRequestEmailPasswordModel(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginRequestEmailPasswordModelToJson(
        LoginRequestEmailPasswordModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
