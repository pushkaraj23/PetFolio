import 'package:flutter/material.dart';
import 'pages/loginPage.dart';
import 'pages/signupPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context) => LoginPage(),
        'signup1':(context) => SignupPage(),
      }
    );
  }
}