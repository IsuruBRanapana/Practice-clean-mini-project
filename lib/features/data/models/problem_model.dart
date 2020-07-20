import 'package:practice/features/domain/entities/problem.dart';
import 'package:meta/meta.dart';

class ProblemModel extends Problem {
  ProblemModel({
    @required String description,
    @required DateTime date,
    @required String category,
    @required String location,
    int likes,
    int dislikes,
    String comment,
  }) : super(
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
