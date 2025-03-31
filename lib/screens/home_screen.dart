import 'package:flutter/material.dart';
import 'profile_screen.dart'; // Importa tu pantalla de perfil

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color colorFondo = Colors.black;
    const Color colorDorado = Color(0xFFFFC107);
    const Color colorTexto = Colors.white;
    const Color colorBoton = Color(0xFF1B1E21);

    return Scaffold(
      backgroundColor: colorFondo,
      body: SafeArea(
        child: Column(
          children: [
            // Ícono de engrane en la esquina superior derecha
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    // Acción para abrir configuración / notificaciones
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: colorDorado,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),

            // Espacio entre el engrane y la imagen de perfil
            const SizedBox(height: 10),

            // Imagen de perfil circular
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/logo.jpeg"),
            ),

            // Nombre de usuario
            const SizedBox(height: 10),
            const Text(
              "Vanessa Robles",
              style: TextStyle(
                color: colorTexto,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Espacio antes de la cuadrícula de botones
            const SizedBox(height: 20),

            // Cuatro botones en 2 columnas (Estudiante, Profesor, Senior, Asistente Virtual)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.1,
                  children: [
                    // Botón "Estudiante"
                    _menuButton(
                      context: context,
                      icon: Icons.person_outline,
                      label: "Estudiante",
                      colorFondo: colorBoton,
                      onTap: () {
                        // Aquí navegamos a la pantalla de perfil
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ProfileScreen()),
                        );
                      },
                    ),
                    // Botón "Profesor"
                    _menuButton(
                      context: context,
                      icon: Icons.work_outline,
                      label: "Profesor",
                      colorFondo: colorBoton,
                      onTap: () {
                        // Acción al presionar "Profesor"
                      },
                    ),
                    // Botón "Senior"
                    _menuButton(
                      context: context,
                      icon: Icons.star_border,
                      label: "Senior",
                      colorFondo: colorBoton,
                      onTap: () {
                        // Acción al presionar "Senior"
                      },
                    ),
                    // Botón "Asistente Virtual"
                    _menuButton(
                      context: context,
                      icon: Icons.chat_bubble_outline,
                      label: "Asistente Virtual",
                      colorFondo: colorBoton,
                      onTap: () {
                        // Acción al presionar "Asistente Virtual"
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Botón "Cerrar Sesión" al final de la pantalla
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Acción para cerrar sesión
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorDorado,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Cerrar Sesión",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget para crear un botón en el grid
  Widget _menuButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Color colorFondo,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
