import 'package:flutter/material.dart';
import 'lecciones.dart'; // Importa la pantalla de Lecciones
import 'tareas.dart'; // Importa la pantalla de Tareas
import 'examenes.dart'; // Importa la pantalla de Exámenes
import 'foros.dart'; // Importa la pantalla de Foros
import 'chatbot.dart'; // Importa la pantalla del Chatbot IA

class MateriasScreen extends StatelessWidget {
  const MateriasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40),
        title: const Text("Costos", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Opciones de Materias",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Botones para las materias
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columnas
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemCount: 5, // Ahora solo tenemos 5 botones
                itemBuilder: (context, index) {
                  return _buildMenuItem(context, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para construir los elementos del menú
  Widget _buildMenuItem(BuildContext context, int index) {
    List<String> titles = [
      "Lecciones",
      "Tareas",
      "Foros",
      "Exámenes",
      "Chatbot IA"  // Nuevo botón para IA
    ];

    List<IconData> icons = [
      Icons.book,
      Icons.assignment,
      Icons.forum,
      Icons.quiz,
      Icons.chat // Icono para el Chatbot IA
    ];

    List<Color> colors = [
      const Color(0xFF2E3748),
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
            MaterialPageRoute(builder: (context) => const LeccionesScreen()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TareasScreen()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ForosScreen()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExamenesScreen()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatbotScreen()), // Redirige al Chatbot IA
          );
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
