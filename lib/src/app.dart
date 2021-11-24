import 'package:flutter/material.dart';
import 'package:login_bloc/src/pages/home_page.dart';
import 'package:login_bloc/src/pages/login_page.dart';
import 'package:login_bloc/src/pages/register_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material',
      initialRoute: 'register',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}
