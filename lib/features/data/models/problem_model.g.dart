// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemModel _$ProblemModelFromJson(Map<String, dynamic> json) {
  return ProblemModel(
    ownerId: json['ownerId'] as String,
    probId: json['probId'] as String,
    imgUrl: json['imgUrl'] as String,
    description: json['description'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    category: json['category'] as String,
    location: json['location'] as String,
    district: json['district'] as String,
    likes: json['likes'] as int,
    dislikes: json['dislikes'] as int,
    comment: json['comment'] as String,
  );
}

Map<String, dynamic> _$ProblemModelToJson(ProblemModel instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'probId': instance.probId,
      'imgUrl': instance.imgUrl,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
      'category': instance.category,
      'location': instance.location,
      'district': instance.district,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'comment': instance.comment,
    };
