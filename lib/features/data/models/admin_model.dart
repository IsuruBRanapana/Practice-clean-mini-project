import 'package:json_annotation/json_annotation.dart';
import 'package:practice/features/domain/entities/admin.dart';
import 'package:meta/meta.dart';

part 'admin_model.g.dart';

@JsonSerializable()
class AdminModel extends Admin {
  AdminModel({
    @required String uid,
    @required String name,
    @required String jobRole,
    @required String telNo,
    String email,
    String workAt,
  }) : super(
          uid: uid,
          name: name,
          jobRole: jobRole,
          telNo: telNo,
          email: email,
          workAt: workAt,
        );

  factory AdminModel.fromJson(Map<String, dynamic> data) =>
      _$AdminModelFromJson(data);

  Map<String, dynamic> toJson() => _$AdminModelToJson(this);
}
