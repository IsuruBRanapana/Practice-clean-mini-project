import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/features/data/models/user_model.dart';
import 'package:practice/features/domain/entities/user.dart';

import '../../../fixtures/fixture_reader.dart';

void main(){
  final tUserModel=UserModel(name: 'name1',telNo: '07123456789',email: 'testing@testing.com',area: 'colombo');
  test('Should be sub class of user entity', ()async{
    //assert
    expect(tUserModel, isA<User>());
  });
  
  group('From json', (){
    test('Should return valid JSON', ()async{
      //arrange
      final Map<String, dynamic> jsonMap=json.decode(fixture('user.json'));

      //act
      final result=UserModel.fromJson(jsonMap);

      //assert
      expect(result, tUserModel);
    });
  });
  
  group('To json', (){
    test('Should return proper json Map', (){
      //act
      final result=tUserModel.toJson();
      //assert
      final expectedMap ={
        "name":"name1",
        "telNo": "07123456789",
        "email": "testing@testing.com",
        "area": "colombo"
      };
      expect(result, expectedMap);
    });
  });
}