import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/features/domain/entities/request/login_request_email_password.dart';
import 'package:practice/features/presentation/bloc/bloc.dart';

import '../../../../injection_container.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _bloc = sl<LoginBloc>();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<LoginBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_)=>_bloc,
      child: BlocListener<LoginBloc,LoginState>(
        bloc: _bloc,
        listener: (context,state) async{
          if(state is UserLoading){
            CircularProgressIndicator();
          }else if(state is UserError){
            LinearProgressIndicator();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
            ),
            TextField(
              controller: _passwordController,
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed: (){
                final loginRequest = LoginRequestEmailPassword(email: _emailController.text,password: _passwordController.text);
                _bloc.add(FetchUserEvent(loginRequest));
              },
            )
          ],
        ),
      ),
    );
  }
}
