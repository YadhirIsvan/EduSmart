import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Colores aproximados según tu mockup
    const Color colorFondo = Color(0xFF000000);   // Negro de fondo
    const Color colorDorado = Color(0xFFFFC107); // Dorado aproximado
    const Color colorBlanco = Color(0xFFFFFFFF);  // Blanco
    const Color colorTexto = Color(0xFF000000);   // Texto negro en la parte blanca

    return Scaffold(
      // Fondo negro general
      backgroundColor: colorFondo,
      body: SafeArea(
        child: Stack(
          children: [
            // Sección blanca con campos y botón
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // Ocupa aproximadamente 85% de la pantalla desde abajo
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: const BoxDecoration(
                  color: colorBlanco,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 40.0,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Título "Inica Sesión"
                        Text(
                          "Inica Sesión",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: colorTexto,
                          ),
                        ),
                        const SizedBox(height: 30),
                        
                        // Etiqueta EMAIL:
                        Text(
                          "EMAIL:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorTexto,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Ingresa tu correo",
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon: Icon(
                              Icons.email,
                              color: colorDorado,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Etiqueta CONTRASEÑA:
                        Text(
                          "CONTRASEÑA:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorTexto,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Ingresa tu contraseña",
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon: Icon(
                              Icons.lock,
                              color: colorDorado,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Botón "Ingresar"
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorDorado,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Ingresar",
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Texto de "Olvidaste la contraseña? Recupérala Aquí"
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "¿Olvidaste la contraseña?",
                                style: TextStyle(
                                  color: colorTexto,
                                  fontSize: 14,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Acción para recuperar contraseña
                                },
                                child: const Text(
                                  "Recupérala Aquí",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Texto para ir a registro
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "¿No tienes una cuenta? ",
                              style: TextStyle(
                                fontSize: 14,
                                color: colorTexto,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                                );
                              },
                              child: const Text(
                                "Regístrate",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Círculo dorado de "Regresar" en la parte superior izquierda
            Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: colorDorado,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.arrow_back, color: Colors.black, size: 20),
                        SizedBox(width: 5),
                        Text(
                          "Regresar",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
