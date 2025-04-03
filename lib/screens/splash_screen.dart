import 'package:flutter/material.dart';
import 'dart:async'; // Para el temporizador
import 'login_screen.dart'; // Asegúrate de tener esta importación

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // Este temporizador es para simular el tiempo del splash screen
    Timer(Duration(seconds: 2), () {
      setState(() {
        _isVisible = true; // Hacemos visible el logo después de 2 segundos
      });

      // Después de mostrar el logo, redirigimos a la siguiente pantalla (por ejemplo, Login)
      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()), // Cambiar por tu pantalla de login
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0, // Controlamos la opacidad
          duration: Duration(seconds: 1), // La transición toma 1 segundo
          child: Image.asset(
            'assets/images/empresaLogo.jpeg', // Asegúrate de que el logo esté en la carpeta assets
            width: 200, // Ajusta el tamaño del logo según sea necesario
            height: 200, // Ajusta el tamaño del logo
          ),
        ),
      ),
    );
  }
}
