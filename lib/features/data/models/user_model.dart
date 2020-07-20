import 'package:practice/features/domain/entities/user.dart';
import 'package:meta/meta.dart';

class UserModel extends User {
  UserModel({
    @required String uid,
    @required String name,
    @required String telNo,
    String email,
    String area,
  }): super(uid:uid, name: name, email: email, area: area, telNo: telNo);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      name: json['name'],
      telNo: json['telNo'],
      email: json['email'],
      area: json['area'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid':uid,
      'name': name,
      'telNo': telNo,
      'email': email,
      'area': area,
    };
  }
}
