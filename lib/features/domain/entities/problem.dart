import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Problem extends Equatable {
  final String description;
  final DateTime date;
  final String category;
  final String location;
  final int likes;
  final int dislikes;
  final String comment;

  Problem({
    @required this.description,
    @required this.date,
    @required this.category,
    @required this.location,
    this.likes,
    this.dislikes,
    this.comment,
  });
}
