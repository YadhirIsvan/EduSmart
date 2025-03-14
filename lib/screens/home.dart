import 'package:flutter/material.dart';
import 'materias.dart'; // Importa la pantalla de Materias

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro principal
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40), // Azul oscuro para la barra superior
        title: Row(
          children: [
            // Imagen de perfil, circular con el fondo adecuado
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile_image.png'), // Aquí agregas la imagen del perfil
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            const Text(
              "Vanessa Robles", // Nombre de usuario
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          // Botón de configuración en la esquina superior derecha
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white, size: 30),
            onPressed: () {
              // Acción para ir a la configuración
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Contenido del usuario (perfil)
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Imagen de perfil, circular con el fondo adecuado
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_image.png'), // Aquí puedes poner la imagen del perfil
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Vanessa Robles", // Nombre de usuario
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Estudiante", // Rol de usuario
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    Text(
                      "Universidad Veracruzana", // Universidad
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Parte de los botones (Estudiante, Profesor, Senior, etc.)
          const Divider(color: Colors.white30, thickness: 1),

          // Sección de botones
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Número de columnas
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              itemCount: 4, // Número de botones en esta sección
              itemBuilder: (context, index) {
                return _buildMenuItem(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Función para construir los elementos del menú
  Widget _buildMenuItem(BuildContext context, int index) {
    // Títulos y colores de cada ítem del menú
    List<String> titles = ["Estudiante", "Profesor", "Senior", "Asistente Virtual"];
    List<IconData> icons = [
      Icons.school,
      Icons.work,
      Icons.star,
      Icons.smart_toy,
    ];

    List<Color> colors = [
      const Color(0xFF2E3748),
      const Color(0xFF2E3748),
      const Color(0xFF2E3748),
      const Color(0xFF2E3748),
    ];

    // Redirige a la pantalla correspondiente
    void _onTap(int index) {
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MateriasScreen()),
          );
          break;
        case 1:
          // Acción para redirigir a la pantalla de Profesor
          break;
        case 2:
          // Acción para redirigir a la pantalla de Senior
          break;
        case 3:
          // Acción para redirigir a la pantalla de Asistente Virtual
          break;
        default:
          break;
      }
    }

    return GestureDetector(
      onTap: () => _onTap(index),
      child: Container(
        decoration: BoxDecoration(
          color: colors[index],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons[index],
              color: Colors.white,
              size: 40,
            ),
            const SizedBox(height: 10),
            Text(
              titles[index],
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

