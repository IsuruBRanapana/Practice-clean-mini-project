import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/features/data/models/response/login_response_model.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';

import '../../../../fixtures/fixture_reader.dart';

void main(){
  final tLoginResponseModel=LoginResponseModel(sessionTimeOut: "5000");
  test('should be a subclass of base class', ()async{
    //assert
    expect(tLoginResponseModel, isA<LoginResponse>());
  });
  test('should return a valid response model', () async {
    final Map<String, dynamic> map = json.decode(fixture('login_response.json'));
    //print(loginResponse.sessionTimeout.toString());
    final result = LoginResponseModel.fromJson(map);
    //print(result.sessionTimeout.toString());
    expect(result,tLoginResponseModel);
  });
}