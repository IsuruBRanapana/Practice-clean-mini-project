import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/features/data/models/admin_model.dart';
import 'package:practice/features/domain/entities/admin.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  final tAdminModel = AdminModel(
    uid: 'uid test',
    name: 'name1',
    telNo: '07123456789',
    jobRole: 'job1',
    email: 'testing@testing.com',
    workAt: 'workAt1',
  );
  test('should subclass of admin entity', () async {
    //assert
    expect(tAdminModel, isA<Admin>());
  });

  group('From json', (){
    test('Should return valid JSON', ()async{
      //arrange
      final Map<String, dynamic> jsonMap=json.decode(fixture('admin.json'));

      //act
      final result=AdminModel.fromJson(jsonMap);

      //assert
      expect(result, tAdminModel);
    });
  });

  group('To json', (){
    test('Should return proper json Map', (){
      //act
      final result=tAdminModel.toJson();
      //assert
      final expectedMap ={
        "uid":"uid test",
        "name":"name1",
        "jobRole":"job1",
        "telNo": "07123456789",
        "email": "testing@testing.com",
        "workAt": "workAt1"
      };
      expect(result, expectedMap);
    });
  });
}
