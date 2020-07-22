import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/entities/user_register.dart';

part 'user_register_model.g.dart';

@JsonSerializable()
class UserRegisterModel extends UserRegister {
  UserRegisterModel({
    @required String name,
    @required String email,
    @required String area,
    @required String telNo,
    @required String password,
  }) : super(
            name: name,
            email: email,
            area: area,
            telNo: telNo,
            password: password);

  factory UserRegisterModel.fromJson(Map<String, dynamic> data) =>
      _$UserRegisterModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserRegisterModelToJson(this);
}
