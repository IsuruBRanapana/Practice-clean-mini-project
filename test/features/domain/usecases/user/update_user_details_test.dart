import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:practice/features/domain/entities/user.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';
import 'package:practice/features/domain/usecases/user/update_user_details.dart';

class MockPracticeRepository extends Mock implements PracticeRepository{}

void main(){
  UpdateUserDetails usecase;
  MockPracticeRepository mockPracticeRepository;

  setUp((){
    mockPracticeRepository=MockPracticeRepository();
    usecase=UpdateUserDetails(mockPracticeRepository);
  });
  final tUser=User(
    uid: "uid",
    name: "name",
    telNo: "tel",
    email: "email",
    area: "area"
  );

  test('Should update and return user', ()async{
    //arrange
    when(mockPracticeRepository.updateUserDetail(tUser)).thenAnswer((_)async => Right(tUser));
    //act
    final result = await usecase(Params(user: tUser));
    //assert
    expect(result, Right(tUser));
    verify(mockPracticeRepository.updateUserDetail(tUser));
    verifyNoMoreInteractions(mockPracticeRepository);
  });
}