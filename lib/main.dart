import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';
import 'screens/welcome.dart';
import 'screens/lecciones.dart';
import 'screens/register.dart';
import 'screens/login.dart';
import 'screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDUSMART',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
    );
  }
}
