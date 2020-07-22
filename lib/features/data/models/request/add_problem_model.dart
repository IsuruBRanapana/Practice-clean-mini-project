import 'package:json_annotation/json_annotation.dart';
import 'package:practice/features/domain/entities/request/add_problem.dart';
import 'package:meta/meta.dart';

part 'add_problem_model.g.dart';

@JsonSerializable()
class AddProblemModel extends AddProblem {
  AddProblemModel({
    @required String ownerId,
    @required String imgUrl,
    @required String description,
    @required DateTime date,
    @required String category,
    @required String location,
    @required String district,
  }) : super(
          ownerId: ownerId,
          imgUrl: imgUrl,
          description: description,
          date: date,
          category: category,
          location: location,
          district: district,
        );

  factory AddProblemModel.fromJson(Map<String,dynamic> data)=>_$AddProblemModelFromJson(data);
  Map<String,dynamic> toJson()=>_$AddProblemModelToJson(this);
}
