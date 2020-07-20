import 'package:practice/features/domain/entities/problem.dart';
import 'package:meta/meta.dart';

class ProblemModel extends Problem {
  ProblemModel({
    @required String ownerId,
    @required String probId,
    @required String imgUrl,
    @required String description,
    @required DateTime date,
    @required String category,
    @required String location,
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
          likes: likes,
          dislikes: dislikes,
          comment: comment,
        );

  factory ProblemModel.fromJson(Map<String, dynamic> json) {
    return ProblemModel(
        ownerId: json['ownerId'],
        probId: json['probId'],
        imgUrl: json['imgUrl'],
        description: json['description'],
        date: json['date'],
        category: json['category'],
        location: json['location'],
        likes: json['likes'],
        dislikes: json['dislikes'],
        comment: json['comment']);
  }

  Map<String, dynamic> toJson() {
    return {
      "ownerId":ownerId,
      "probId":probId,
      "imgUrl":imgUrl,
      "description": description,
      "category": category,
      "location": location,
      "likes": likes,
      "dislikes": dislikes,
      "comment": comment,
      "date": date
    };
  }
}
