import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';
import 'package:practice/features/domain/usecases/problem/get_district_problems.dart';

class MockPracticeRepository extends Mock implements PracticeRepository{}

void main(){
  GetDistrictProblems usecase;
  MockPracticeRepository mockPracticeRepository;

  setUp((){
    mockPracticeRepository=MockPracticeRepository();
    usecase=GetDistrictProblems(mockPracticeRepository);
  });

  final tProblem=Problem(
    probId: '1',
    ownerId: '2',
    imgUrl: '3',
    description: '4',
    date: DateTime.now(),
    category: 'cat',
    location: '6',
    district: 'dis',
    likes: 7,
    dislikes: 8,
    comment: '9',
  );

  test('should get all problems related to district', ()async{
    //arrange
    when(mockPracticeRepository.getDistrictProblems('dis')).thenAnswer((_) async => Right(tProblem));
    //act
    final result=await usecase(Params(district: 'dis'));
    //assert
    expect(result, Right(tProblem));
    verify(mockPracticeRepository.getDistrictProblems(any));
    verifyNoMoreInteractions(mockPracticeRepository);
  });
}