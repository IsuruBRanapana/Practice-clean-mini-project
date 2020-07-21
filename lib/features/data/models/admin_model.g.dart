// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return AdminModel(
    uid: json['uid'] as String,
    name: json['name'] as String,
    jobRole: json['jobRole'] as String,
    telNo: json['telNo'] as String,
    email: json['email'] as String,
    workAt: json['workAt'] as String,
  );
}

Map<String, dynamic> _$AdminModelToJson(AdminModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'jobRole': instance.jobRole,
      'email': instance.email,
      'telNo': instance.telNo,
      'workAt': instance.workAt,
    };
