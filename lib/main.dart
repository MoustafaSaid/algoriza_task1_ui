import 'package:algoriza_task1_ui/modules/login_screen.dart';
import 'package:algoriza_task1_ui/modules/on_board_screen.dart';
import 'package:algoriza_task1_ui/modules/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context)=>const LoginScreen(),
        '/register':(context)=>const RegisterScreen(),
      },
      home: const OnBoardScreen(),
    );
  }
}
