import 'package:flutter/material.dart';
import 'subject_options_screen.dart';
import 'virtual_assistant_screen.dart';
import '../screens/models/course_data.dart'; // Ahora estamos usando 'cursos'

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

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
              const Text(
                "Materias",
                style: TextStyle(
                  color: _textColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Card usuario
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(16),
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
                    SizedBox(width: 16),
                    _UserInfo(),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Header "MATERIAS"
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "MATERIAS",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Usamos la lista 'cursos' para generar las tarjetas de materias
              ...cursos.map((curso) {
                return _subjectCard(context, curso.nombre);
              }).toList(),

              const SizedBox(height: 40),

              // Placeholder para tu logo
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

  Widget _subjectCard(BuildContext context, String name) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SubjectOptionsScreen(subjectName: name)),
        );
      },
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: _textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 14),
                      children: [
                        TextSpan(text: "Profesor: ", style: TextStyle(color: _accent)),
                        TextSpan(text: "\nCréditos: ", style: TextStyle(color: _accent)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          style: TextStyle(color: SubjectsScreen._textColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          "Estudiante",
          style: TextStyle(color: SubjectsScreen._textColor, fontSize: 14),
        ),
        Text(
          "Universidad Veracruzana",
          style: TextStyle(color: SubjectsScreen._textColor, fontSize: 14),
        ),
      ],
    );
  }
}

