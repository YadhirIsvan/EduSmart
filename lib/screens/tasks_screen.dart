import 'package:flutter/material.dart';
import 'virtual_assistant_screen.dart'; // Asegúrate de importar correctamente el archivo de la pantalla
import 'task_detail_screen.dart'; // Asegúrate de importar la pantalla TaskDetailScreen

class TasksScreen extends StatelessWidget {
  final String subjectName;

  // Constructor que acepta subjectName
  TasksScreen({Key? key, required this.subjectName}) : super(key: key);

  static const Color _background = Colors.black;
  static const Color _cardColor = Color(0xFF1B1E21);
  static const Color _accent = Color(0xFFFFC107);
  static const Color _textColor = Colors.white;

  final List<Map<String, String>> tasks = [
    {
      'name': 'Actividad 1',
      'title': 'Costos de Producción',
      'dueDate': '11 Enero 2025 3:00 PM',
      'status': 'Completada',
    },
    {
      'name': 'Actividad 2',
      'title': 'Costos Variables',
      'dueDate': '15 Febrero 2025 10:00 AM',
      'status': 'Subida',
    },
    {
      'name': 'Actividad 3',
      'title': 'Costos Fijos',
      'dueDate': '20 Marzo 2025 5:00 PM',
      'status': 'Revisada',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        title: Text(subjectName, style: const TextStyle(color: _textColor)),
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

              // Tareas: Lista de tareas
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "TAREAS",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Lista de tareas
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return InkWell(
                    onTap: () {
                      // Navegar a la vista de detalles de la tarea
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskDetailScreen(
                            taskName: task['name']!,
                            taskTitle: task['title']!,
                            startDate: '01/01/2025', // Asume que la fecha de inicio se puede tomar
                            dueDate: task['dueDate']!,
                            description: 'Descripción de la tarea aquí...',
                            modules: 'Módulo relacionado',
                            score: '10 pts',
                            grade: 'A',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _cardColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: _accent, width: 2), // Borde naranja
                      ),
                      child: Row(
                        children: [
                          // Información de la tarea (Nombre, Título, Fecha de entrega)
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  task['name']!,
                                  style: const TextStyle(
                                    color: _accent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  task['title']!,
                                  style: const TextStyle(
                                    color: _textColor,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Fecha de entrega: ${task['dueDate']}',
                                  style: const TextStyle(
                                    color: _textColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Estado de la tarea
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: _accent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              task['status']!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
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
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
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
