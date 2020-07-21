import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/features/data/models/problem_model.dart';
import 'package:practice/features/domain/entities/problem.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  final tProblemModel = ProblemModel(
    ownerId: 'owner test',
    probId: 'prob test',
    imgUrl: 'img',
    description: 'desc',
    date: DateTime.utc(2020, 3, 1),
    district: "dist",
    category: 'Cat',
    location: 'colombo',
    likes: 1,
    dislikes: 1,
    comment: 'com',
  );

  test('Should be subclass of Problem Entity', () async {
    //asset
    expect(tProblemModel, isA<Problem>());
  });

  group('From Json', () {
    test('Should return valid JSON', () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('problem.json'));

      //act
      final result = ProblemModel.fromJson(jsonMap);

      //assert
      expect(result, tProblemModel);
    });
  });

  group('To json', () {
    test('Should return proper json Map', () {
      //act
      final result = tProblemModel.toJson();
      //assert
      final expectedMap = {
        "ownerId": "owner test",
        "probId": "prob test",
        "imgUrl": "img",
        "description": "desc",
        "category": "Cat",
        "location": "colombo",
        "likes": 1,
        "dislikes": 1,
        "comment": "com",
        //must pass date time val correctly
        // "date":
      };
      expect(result, expectedMap);
    });
  });
}
