import 'package:flutter/material.dart';
import 'package:practice/features/presentation/pages/login/login_page.dart';
import 'injection_container.dart'as di;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
