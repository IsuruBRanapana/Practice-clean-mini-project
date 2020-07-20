import 'package:practice/features/domain/entities/admin.dart';
import 'package:meta/meta.dart';

class AdminModel extends Admin {
  AdminModel({
    @required String name,
    @required String jobRole,
    @required String telNo,
    String email,
    String workAt,
  }) : super(
          name: name,
          jobRole: jobRole,
          telNo: telNo,
          email: email,
          workAt: workAt,
        );

  factory AdminModel.fromJson(Map<String,dynamic> json){
    return AdminModel(
      name: json['name'],
      jobRole: json['jobRole'],
      telNo: json['telNo'],
      email: json['email'],
      workAt: json['workAt']
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'name':name,
      'jobRole':jobRole,
      'telNo':telNo,
      'email':email,
      'workAt':workAt
    };
  }
}
