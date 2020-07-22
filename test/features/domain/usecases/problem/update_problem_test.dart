import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:practice/features/domain/entities/problem.dart';
import 'package:practice/features/domain/repositories/practice_repository.dart';
import 'package:practice/features/domain/usecases/problem/update_problem.dart';

class MockPracticeRepository extends Mock implements PracticeRepository{}

void main(){
  UpdateProblem usecase;
  MockPracticeRepository repository;

  setUp((){
    repository=MockPracticeRepository();
    usecase=UpdateProblem(repository);
  });

  final tProblem=Problem(
    probId: "1",
    ownerId: "2",
    imgUrl: 'url',
    description: "des",
    date: DateTime.now(),
    category: "cat",
    location: 'loc',
    district: 'dis',
    likes: 1,
    dislikes: 2,
    comment: 'com'
  );
  test('Should return updated problem', ()async{
    //arrange
    when(repository.updateProblem(tProblem)).thenAnswer((_)async => Right(tProblem));
    //act
    final result= await usecase(Params(problem: tProblem));
    //assert
    expect(result, Right(tProblem));
    verify(repository.updateProblem(tProblem));
    verifyNoMoreInteractions(repository);
  });
}