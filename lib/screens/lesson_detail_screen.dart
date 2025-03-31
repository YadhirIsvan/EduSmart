import 'package:flutter/material.dart';
import 'virtual_assistant_screen.dart'; // For the chatbot

class LessonDetailScreen extends StatefulWidget {
  final String lessonName;

  const LessonDetailScreen({Key? key, required this.lessonName}) : super(key: key);

  @override
  _LessonDetailScreenState createState() => _LessonDetailScreenState();
}

class _LessonDetailScreenState extends State<LessonDetailScreen> {
  int _selectedMenu = 0; // To track the selected button (PDF = 0, Video = 1, Activities = 2, Information = 3)

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
        title: Text(widget.lessonName, style: const TextStyle(color: _textColor)),
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
                      backgroundImage: AssetImage("assets/images/sky.jpg"),
                    ),
                    SizedBox(width: 12),
                    _UserInfo(textColor: _textColor),
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

              // Nombre del módulo con fondo naranja
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.orange, // Orange background for module name
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Módulo I: Costos de Producción",
                    style: const TextStyle(
                      color: _textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Título de la lección -> Cambiado a "Tema" y centrado
              Center(
                child: Text(
                  "Tema: Costos Fijos y Variables",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Barra de pestañas (Información, PDF, Video, Actividades)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildMenuButton("Información", 3),
                  _buildMenuButton("PDF", 0),
                  _buildMenuButton("Video", 1),
                  _buildMenuButton("Actividades", 2),
                ],
              ),
              const SizedBox(height: 24),

              // Contenido basado en la selección de la pestaña
              _selectedMenu == 0
                  ? _buildPDFContent()
                  : _selectedMenu == 1
                      ? _buildVideoContent()
                      : _selectedMenu == 2
                          ? _buildActivitiesContent()
                          : _buildInformationContent(),

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

  // Function to build the buttons for PDF, Video, Activities, and Information
  Widget _buildMenuButton(String label, int index) {
    bool isSelected = _selectedMenu == index;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedMenu = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow : _cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.black : _accent,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Simulate PDF content
  Widget _buildPDFContent() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("PDF Contenido", style: TextStyle(color: _textColor, fontSize: 18)),
          const SizedBox(height: 10),
          // Simulate opening a PDF
          ElevatedButton(
            onPressed: () {
              // Simulate PDF opening
            },
            child: const Text("Abrir PDF", style: TextStyle(color: Colors.black)),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
          ),
        ],
      ),
    );
  }

  // Simulate video content
  Widget _buildVideoContent() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text("Video contenido (simulado)", style: TextStyle(color: _textColor, fontSize: 18)),
    );
  }

  // Simulate activities content
  Widget _buildActivitiesContent() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text("Actividades (simulado)", style: TextStyle(color: _textColor, fontSize: 18)),
    );
  }

  // Simulate information content
  Widget _buildInformationContent() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text("Información adicional sobre la lección", style: TextStyle(color: _textColor, fontSize: 18)),
    );
  }
}

class _UserInfo extends StatelessWidget {
  final Color textColor;

  const _UserInfo({required this.textColor}); // Add a constructor to accept the color.

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Vanessa Robles",
          style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2),
        Text("Universidad Veracruzana", style: TextStyle(color: textColor, fontSize: 14)),
      ],
    );
  }
}
