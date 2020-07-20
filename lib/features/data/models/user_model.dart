import 'package:practice/features/domain/entities/user.dart';
import 'package:meta/meta.dart';

class UserModel extends User {
  UserModel({
    @required String name,
    @required String telNo,
    String email,
    String area,
  }): super(name: name, email: email, area: area, telNo: telNo);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      telNo: json['telNo'],
      email: json['email'],
      area: json['area'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'telNo': telNo,
      'email': email,
      'area': area,
    };
  }
}
