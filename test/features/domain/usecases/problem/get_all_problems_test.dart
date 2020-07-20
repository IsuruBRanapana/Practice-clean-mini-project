import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:practice/core/usecase/usecase.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';
import 'package:practice/features/domain/usecases/problem/get_all_problems.dart';

class MockPracticeRepository extends Mock implements PracticeRepository{}
void main(){
  GetAllProblems usecase;
  MockPracticeRepository mockPracticeRepository;

  setUp((){
    mockPracticeRepository=MockPracticeRepository();
    usecase=GetAllProblems(mockPracticeRepository);
  });
  final tProblem = Problem(
      probId: "1",
      ownerId: "2",
      imgUrl: "3",
      description: "4",
      date: DateTime.now(),
      category: "5",
      location: "6",
      likes: 7,
      dislikes: 8,
      comment: "9"
  );

  test('should get all problem from the repository', ()async{
    //arrange
    when(mockPracticeRepository.getAllProblems()).thenAnswer((_)async => Right(tProblem));
    //act
    final result = await usecase(NoParams());
    //assert
    expect(result, Right(tProblem));
    verify(mockPracticeRepository.getAllProblems());
    verifyNoMoreInteractions(mockPracticeRepository);
  });
}



