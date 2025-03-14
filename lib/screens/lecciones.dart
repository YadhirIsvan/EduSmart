import 'package:flutter/material.dart';

class LeccionesScreen extends StatelessWidget {
  const LeccionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "LECCIONES",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildLeccionCard("Módulo I", "Costos de Producción",
                ["Materias Primas", "Mano de Obra Directa e Indirecta"], true),
            _buildLeccionCard("Módulo II", "Costos de Producción",
                ["Materias Primas", "Mano de Obra Directa e Indirecta"], true),
            _buildLeccionCard("Módulo III", "Costos de Producción",
                ["Materias Primas", "Mano de Obra Directa e Indirecta"], true),
            _buildLeccionCard("Módulo IV", "Costos de Producción",
                ["Materias Primas", "Mano de Obra Directa e Indirecta"], true),
            _buildLeccionCard("Módulo V", "Costos de Producción",
                ["Materias Primas", "Mano de Obra Directa e Indirecta"], true),
          ],
        ),
      ),
    );
  }

  Widget _buildLeccionCard(String modulo, String titulo, List<String> temas, bool completado) {
    return Card(
      color: const Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  modulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  completado ? "Completado" : "Pendiente",
                  style: TextStyle(
                    color: completado ? Colors.yellow : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              titulo,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: temas
                  .map((tema) => Text(
                        "• $tema",
                        style: const TextStyle(color: Colors.white70),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
