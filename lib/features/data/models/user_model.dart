import 'package:json_annotation/json_annotation.dart';
import 'package:practice/features/domain/entities/user.dart';
import 'package:meta/meta.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  UserModel({
    @required String uid,
    @required String name,
    @required String telNo,
    String email,
    String area,
  }) : super(uid: uid, name: name, email: email, area: area, telNo: telNo);

  factory UserModel.fromJson(Map<String, dynamic> data) =>
      _$UserModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
