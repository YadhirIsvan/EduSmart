import 'package:flutter/material.dart';

class TareasScreen extends StatelessWidget {
  const TareasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40), // Azul oscuro para la barra superior
        title: const Text(
          'Tareas', // Título de la pantalla
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Acción para ir a la configuración
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tareas Asignadas",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Aquí puedes agregar un listado de tareas, por ejemplo:
            _buildTareaCard("Actividad 1", "Costos de Producción", "Fecha: 11 de enero", "Completado"),
            _buildTareaCard("Actividad 2", "Economía", "Fecha: 15 de enero", "Pendiente"),
            _buildTareaCard("Actividad 3", "Gestión de MIPYMES", "Fecha: 20 de enero", "En proceso"),
            _buildTareaCard("Actividad 4", "Habilidades Directivas", "Fecha: 25 de enero", "Completado"),
            _buildTareaCard("Actividad 5", "Inglés I", "Fecha: 30 de enero", "Pendiente"),
          ],
        ),
      ),
    );
  }

  // Función para construir las tarjetas de las tareas
  Widget _buildTareaCard(String actividad, String materia, String fecha, String estado) {
    return Card(
      color: const Color(0xFFF5F5F5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              actividad,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              materia,
              style: const TextStyle(color: Colors.black54, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              fecha,
              style: const TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              estado,
              style: TextStyle(
                color: estado == "Completado" ? Colors.green : (estado == "Pendiente" ? Colors.red : Colors.orange),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
