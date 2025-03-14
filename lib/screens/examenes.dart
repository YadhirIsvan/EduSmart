import 'package:flutter/material.dart';

class ExamenesScreen extends StatelessWidget {
  const ExamenesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40), // Azul oscuro para la barra superior
        title: const Text(
          'Exámenes',
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
              "Tus Exámenes",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Contenido de los exámenes disponibles
            _buildExamenCard("Parcial 1", "11 de enero", "Completado", Colors.green),
            _buildExamenCard("Parcial 2", "15 de enero", "Pendiente", Colors.red),
            _buildExamenCard("Parcial 3", "20 de enero", "En proceso", Colors.orange),
            _buildExamenCard("Parcial 4", "25 de enero", "Completado", Colors.green),
            _buildExamenCard("Parcial 5", "30 de enero", "Pendiente", Colors.red),
          ],
        ),
      ),
    );
  }

  // Función para construir las tarjetas de los exámenes
  Widget _buildExamenCard(String examen, String fecha, String estado, Color estadoColor) {
    return Card(
      color: const Color(0xFFF5F5F5), // Fondo claro para la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              examen,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Fecha: $fecha",
              style: const TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              estado,
              style: TextStyle(
                color: estadoColor, // Usa el color del estado (verde, rojo, naranja)
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Botón para comenzar el examen (si está pendiente o en proceso)
            if (estado == "Pendiente" || estado == "En proceso")
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: estadoColor, // El color de fondo cambia según el estado
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Acción para comenzar el examen
                },
                child: const Text(
                  "Comenzar Ahora",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
