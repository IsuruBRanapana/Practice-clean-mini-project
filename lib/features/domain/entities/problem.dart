import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Problem extends Equatable {
  final String ownerId;
  final String probId;
  //TODO : change single image to multiple using array
  final String imgUrl;
  final String description;
  final DateTime date;
  final String category;
  final String location;
  final String district;
  final int likes;
  final int dislikes;
  final String comment;

  Problem({
    @required this.probId,
    @required this.ownerId,
    @required this.imgUrl,
    @required this.description,
    @required this.date,
    @required this.category,
    @required this.location,
    @required this.district,
    this.likes,
    this.dislikes,
    this.comment,
  });
}
