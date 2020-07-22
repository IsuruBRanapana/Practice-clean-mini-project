// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegisterModel _$UserRegisterModelFromJson(Map<String, dynamic> json) {
  return UserRegisterModel(
    name: json['name'] as String,
    email: json['email'] as String,
    area: json['area'] as String,
    telNo: json['telNo'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserRegisterModelToJson(UserRegisterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'area': instance.area,
      'telNo': instance.telNo,
      'password': instance.password,
    };
