import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  Failure([List properties = const<dynamic>[]]):super(properties);
}

//general failures
class ServerFailures extends Failure{}

class CacheFailure extends Failure{}

class ConnectionFailure extends Failure {}

class AuthorizedFailure extends Failure {}