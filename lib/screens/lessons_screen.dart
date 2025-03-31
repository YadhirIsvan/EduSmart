import 'package:flutter/material.dart';
import 'virtual_assistant_screen.dart'; // For the chatbot
import 'lesson_detail_screen.dart'; // For navigating to the lesson detail screen

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({Key? key}) : super(key: key);

  static const Color _background = Colors.black;
  static const Color _cardColor = Color(0xFF1B1E21);
  static const Color _accent = Color(0xFFFFC107);
  static const Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: _accent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const VirtualAssistantScreen()),
          );
        },
        child: const Icon(Icons.chat, color: Colors.black),
      ),
      appBar: AppBar(
        title: const Text("Lecciones", style: TextStyle(color: _textColor)),
        backgroundColor: _cardColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Datos del estudiante
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage("assets/images/logo.jpeg"),
                    ),
                    SizedBox(width: 12),
                    _UserInfo(),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Título de lecciones dentro de un rectángulo gris
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[700], // Grey background for lessons
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "LECCIONES",
                    style: const TextStyle(
                      color: _textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Botones de Módulos
              _buildModuleButton(context, "Módulo I: Costos de Producción", 0, [
                "Introducción a Costos",
                "Costos Variables y Fijos",
                "Costos de Producción por Departamento"
              ], "Completado"),
              const SizedBox(height: 16),
              _buildModuleButton(context, "Módulo II: Finanzas", 1, [
                "Flujo de Caja",
                "Análisis de Ingresos y Gastos",
                "Presupuestos Financieros"
              ], "En Proceso"),
              const SizedBox(height: 16),
              _buildModuleButton(context, "Módulo III: Estrategias de Marketing", 2, [
                "Segmentación de Mercado",
                "Posicionamiento de Marca",
                "Estrategias Digitales"
              ], "Sin Ver"),
              const SizedBox(height: 40),

              // Placeholder for logo
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Tu Logo Aquí",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build the module buttons with the style you requested (no background, yellow bottom border)
  Widget _buildModuleButton(BuildContext context, String moduleName, int index, List<String> topics, String status) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => LessonDetailScreen(lessonName: moduleName),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _cardColor,
          borderRadius: BorderRadius.circular(10),
          border: Border(bottom: BorderSide(color: _accent, width: 4)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              moduleName,
              style: TextStyle(
                color: _textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Display topics below the module name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: topics
                  .map((topic) => Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          topic,
                          style: TextStyle(color: _textColor, fontSize: 16),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 8),
            // Status of the module on the right
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                status,
                style: TextStyle(
                  color: _getStatusColor(status),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Get the color for the module status
  Color _getStatusColor(String status) {
    if (status == "Completado") {
      return Colors.yellow;
    } else if (status == "En Proceso") {
      return Colors.grey;
    } else {
      return Colors.white;
    }
  }
}

// User information with image
class _UserInfo extends StatelessWidget {
  const _UserInfo();
  static const Color _textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Vanessa Robles",
          style: TextStyle(color: _textColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2),
        Text("Universidad Veracruzana", style: TextStyle(color: _textColor, fontSize: 14)),
      ],
    );
  }
}
