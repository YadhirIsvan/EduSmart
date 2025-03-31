
import 'package:flutter/material.dart';
import 'lessons_screen.dart';
import 'tasks_screen.dart'; // Asegúrate de importar la pantalla TasksScreen
import 'forums_screen.dart';
import 'exams_screen.dart';
import 'meetings_screen.dart';
import 'progress_screen.dart';
import 'virtual_assistant_screen.dart';

class SubjectOptionsScreen extends StatelessWidget {
  final String subjectName;
  const SubjectOptionsScreen({required this.subjectName, Key? key}) : super(key: key);

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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User info card (shorter height)
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

              // Subject title header
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  subjectName.toUpperCase(),
                  style: const TextStyle(
                    color: _textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Option buttons
              _buildOption(context, "Lecciones", LessonsScreen()),
              const SizedBox(height: 16),
              _buildOption(
                context, 
                "Tareas", 
                TasksScreen(subjectName: subjectName) // Aquí se pasa correctamente el subjectName
              ),
              const SizedBox(height: 16),
              _buildOption(context, "Foros", ForumsScreen()),
              const SizedBox(height: 16),
              _buildOption(context, "Exámenes", ExamsScreen()),
              const SizedBox(height: 16),
              _buildOption(context, "Reuniones", MeetingsScreen()),
              const SizedBox(height: 16),
              _buildOption(context, "Progreso", ProgressScreen()),

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

  Widget _buildOption(BuildContext context, String label, Widget screen) {
    return InkWell(
      onTap: () => Navigator.push(  
        context,  
        MaterialPageRoute(builder: (_) => screen),
      ),
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: _cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              label.toUpperCase(),
              style: const TextStyle(
                color: _accent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: _accent, size: 20),
          ],
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
