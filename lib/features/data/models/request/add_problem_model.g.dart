// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_problem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProblemModel _$AddProblemModelFromJson(Map<String, dynamic> json) {
  return AddProblemModel(
    ownerId: json['ownerId'] as String,
    imgUrl: json['imgUrl'] as String,
    description: json['description'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    category: json['category'] as String,
    location: json['location'] as String,
    district: json['district'] as String,
  );
}

Map<String, dynamic> _$AddProblemModelToJson(AddProblemModel instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'imgUrl': instance.imgUrl,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
      'category': instance.category,
      'location': instance.location,
      'district': instance.district,
    };
