import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends LoginResponse {
  LoginResponseModel({@required String sessionTimeOut})
      : super(sessionTimeOut: sessionTimeOut);

  factory LoginResponseModel.fromJson(Map<String, dynamic> data) =>
      _$LoginResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
