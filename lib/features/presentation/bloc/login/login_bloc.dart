import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:practice/features/domain/usecases/user/get_login.dart';
import 'package:meta/meta.dart';

import '../bloc.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLogin getLogin;
  LoginBloc({@required GetLogin getLogin})
      :assert(getLogin!=null),
        getLogin=getLogin;

  @override
  // TODO: implement initialState
  LoginState get initialState => InitialLoginState();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }


}
