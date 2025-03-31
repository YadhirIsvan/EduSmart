import 'package:flutter/material.dart';
import 'subjects_screen.dart';
import 'virtual_assistant_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color background = Colors.black;
    const Color cardColor = Color(0xFF1B1E21);
    const Color accent = Color(0xFFFFC107);
    const Color textColor = Colors.white;

    return Scaffold(
      backgroundColor: background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: accent,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const VirtualAssistantScreen()),
        ),
        child: const Icon(Icons.chat, color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Perfil",
                style: TextStyle(color: textColor, fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // ——————————————————————————————
              // Card de usuario (mismo ancho/alto que notificaciones)
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(10)),
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

              // ——————————————————————————————
              // Botón MATERIAS
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SubjectsScreen()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: const [
                      Text("MATERIAS", style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: accent, size: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // ——————————————————————————————
              // Sección Notificaciones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notificaciones:", style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold)),
                  InkWell(onTap: () {}, child: const Text("Mostrar más", style: TextStyle(color: accent, decoration: TextDecoration.underline))),
                ],
              ),
              const SizedBox(height: 16),

              _notificationCard("CALENDARIO Y AGENDA", "• Se te ha asignado un nuevo proyecto…", cardColor, textColor),
              const SizedBox(height: 16),
              _notificationCard("TAREAS", "• 2 tareas nuevas…", cardColor, textColor),
              const SizedBox(height: 40),

              // ——————————————————————————————
              // Placeholder para tu logo personalizado
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
        Text("Vanessa Robles", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text("Estudiante", style: TextStyle(color: Colors.white, fontSize: 14)),
        Text("Universidad Veracruzana", style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}

Widget _notificationCard(String title, String message, Color bg, Color textColor) {
  return Container(
    width: double.infinity,
    height: 100,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text(message, style: TextStyle(color: textColor, fontSize: 14)),
      ],
    ),
  );
}