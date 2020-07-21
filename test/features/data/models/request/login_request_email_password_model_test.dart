import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/features/data/models/request/login_request_email_password_model.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';

import '../../../../fixtures/fixture_reader.dart';


void main(){
  final tLoginRequestEmailPasswordModel=LoginRequestEmailPasswordModel(
    email: 'email',
    password: 'pass'
  );

  test('should a subclass of LoginRequestEmailPassword entity', ()async{
    //assert
    expect(tLoginRequestEmailPasswordModel, isA<LoginRequestEmailPassword>());
  });

  group("From json", (){
    test('should return valid Json', ()async{
      //arrange
      final Map<String, dynamic> jsonMap=json.decode(fixture('loginrequest.json'));

      //act
      final result=LoginRequestEmailPasswordModel.fromJson(jsonMap);

      //assert
      expect(result, tLoginRequestEmailPasswordModel);
    });
  });

  group('to json', (){
    test('should return proper json map', ()async{
      //act
      final result=tLoginRequestEmailPasswordModel.toJson();
      //assert
      final expectedMap={
        "email":"email",
        "password":"pass"
      };
      expect(result, expectedMap);
    });
  });
}