import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/domain/entities/response/login_response.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';
import 'package:practice/features/domain/usecases/user/get_login.dart';

class MockPracticeRepository extends Mock implements PracticeRepository{}

void main(){
  GetLogin usecase;
  MockPracticeRepository mockPracticeRepository;

  setUp((){
    mockPracticeRepository =MockPracticeRepository();
    usecase =GetLogin(mockPracticeRepository);
  });

  final tLoginRequest = LoginRequestEmailPassword(
    email: "mail",
    password: "pass"
  );
  final tResposne=LoginResponse(sessionTimeOut: "5000");

  test('should get user for the id from the repository', ()async{
    //arrange
    when(mockPracticeRepository.getLogin(any)).thenAnswer((_) async => Right(tResposne));
    //act
    final result = await usecase(Params(loginRequestEmailPassword: tLoginRequest));
    //assert
    expect(result, Right(tResposne));
    verify(mockPracticeRepository.getLogin(tLoginRequest));
    verifyNoMoreInteractions(mockPracticeRepository);
  });
}