import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AddProblem extends Equatable {
  final String ownerId;

  //TODO : change single image to multiple using array
  final String imgUrl;
  final String description;
  final DateTime date;
  final String category;
  final String location;
  final String district;

  AddProblem({
    @required this.ownerId,
    @required this.imgUrl,
    @required this.description,
    @required this.date,
    @required this.category,
    @required this.location,
    @required this.district,
  }) : super([
          ownerId,
          imgUrl,
          description,
          date,
          category,
          location,
          district,
        ]);
}
