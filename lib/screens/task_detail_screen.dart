import 'package:flutter/material.dart';
import 'virtual_assistant_screen.dart';  // Asegúrate de tener el archivo del chat

class TaskDetailScreen extends StatelessWidget {
  final String taskName;
  final String taskTitle;
  final String startDate;
  final String dueDate;
  final String description;
  final String modules;
  final String score;
  final String grade;

  TaskDetailScreen({
    Key? key,
    required this.taskName,
    required this.taskTitle,
    required this.startDate,
    required this.dueDate,
    required this.description,
    required this.modules,
    required this.score,
    required this.grade,
  }) : super(key: key);

  static const Color _background = Colors.black;
  static const Color _cardColor = Color(0xFF1B1E21);
  static const Color _accent = Color(0xFFFFC107);
  static const Color _textColor = Colors.white;
  static const Color _yellow = Color(0xFFc9a227);  // Color amarillo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        title: const Text(
          "Detalle de la Actividad",
          style: TextStyle(color: _textColor),
        ),
        backgroundColor: _cardColor,
      ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Datos del estudiante (similar a lo de Lecciones)
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/images/logo.jpeg"),
                    ),
                    SizedBox(width: 12),
                    _UserInfo(),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Tareas: Título de la tarea
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "TAREA",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Información de la tarea (Número, Título, Fecha de entrega)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _yellow, // Rectángulo amarillo
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Actividad 1",  // Solo el número dentro del rectángulo amarillo
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Título de la actividad
              Text(
                taskTitle,
                style: TextStyle(
                  color: _yellow,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Valor y Calificación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Valor: $score',
                    style: TextStyle(
                      color: _yellow,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Calificación: $grade',
                    style: TextStyle(
                      color: _yellow,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Fechas: Fecha de inicio y vencimiento
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Inicio: $startDate",
                    style: const TextStyle(color: _textColor, fontSize: 14),
                  ),
                  Text(
                    "Vencimiento: $dueDate",
                    style: const TextStyle(color: _textColor, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Línea divisoria
              Divider(color: _textColor),

              // Botones de los módulos de la actividad
              const SizedBox(height: 24),
              const Text(
                "Módulos de la Actividad",
                style: TextStyle(
                  color: _textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildModuleButton(context, "Módulo 1"),
                  _buildModuleButton(context, "Módulo 2"),
                  _buildModuleButton(context, "Módulo 3"),
                ],
              ),
              const SizedBox(height: 24),

              // Descripción de la tarea
              Text(
                description,
                style: const TextStyle(color: _textColor, fontSize: 14),
              ),
              const SizedBox(height: 24),

              // Archivos adjuntos (ejemplo PDF y Excel)
              const Text(
                "Archivos adjuntos:",
                style: TextStyle(color: _textColor, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildFileButton("PDF - Diagrama UML"),
                  _buildFileButton("Excel - Presupuesto"),
                ],
              ),
              const SizedBox(height: 24),

              // Botón de subir la tarea
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Acción para subir tarea
                  },
                  icon: const Icon(Icons.upload, color: Colors.black),
                  label: const Text("Subir Tarea", style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _yellow,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Icono de la aplicación y botón de chat
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.app_blocking, size: 40, color: _yellow),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const VirtualAssistantScreen()),
                      );
                    },
                    backgroundColor: _yellow,
                    child: const Icon(Icons.chat, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModuleButton(BuildContext context, String moduleName) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {
          // Navegar a la pantalla del módulo correspondiente
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(moduleName),
      ),
    );
  }

  Widget _buildFileButton(String fileName) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {
          // Acción para abrir el archivo
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(fileName),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Vanessa Robles",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2),
        Text("Universidad Veracruzana", style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
