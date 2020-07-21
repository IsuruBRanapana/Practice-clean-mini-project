import 'package:json_annotation/json_annotation.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:meta/meta.dart';

part 'problem_model.g.dart';

@JsonSerializable()
class ProblemModel extends Problem {
  ProblemModel({
    @required String ownerId,
    @required String probId,
    @required String imgUrl,
    @required String description,
    @required DateTime date,
    @required String category,
    @required String location,
    @required String district,
    int likes,
    int dislikes,
    String comment,
  }) : super(
          ownerId: ownerId,
          probId:probId,
          imgUrl:imgUrl,
          description: description,
          date: date,
          category: category,
          location: location,
          district:district,
          likes: likes,
          dislikes: dislikes,
          comment: comment,
        );

  factory ProblemModel.fromJson(Map<String,dynamic> data)=>_$ProblemModelFromJson(data);
  Map<String,dynamic> toJson()=>_$ProblemModelToJson(this);
}
