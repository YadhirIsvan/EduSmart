import 'package:flutter/material.dart';
import 'virtual_assistant_screen.dart';
import 'forum_detail_screen.dart'; // Asegúrate de importar ForumDetailScreen

class ForumsScreen extends StatelessWidget {
  ForumsScreen({Key? key}) : super(key: key);

  static const Color _background = Colors.black;
  static const Color _cardColor = Color(0xFF1B1E21);
  static const Color _accent = Color(0xFFFFC107);
  static const Color _textColor = Colors.white;

  final List<Map<String, String>> forums = [
    {
      'name': 'Foro 1',
      'title': 'Introducción a los Costos',
      'startDate': '15 Enero 2025',
      'endDate': '22 Enero 2025',
      'status': 'Respondido',
    },
    {
      'name': 'Foro 2',
      'title': 'Costos Fijos y Variables',
      'startDate': '18 Enero 2025',
      'endDate': '25 Enero 2025',
      'status': 'No Respondido',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        title: const Text('Foros', style: TextStyle(color: _textColor)),
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
              // Datos del estudiante (como en otras vistas)
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

              // Foros: Lista de foros
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: _cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "FOROS",
                  style: TextStyle(
                    color: _textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Lista de foros
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: forums.length,
                itemBuilder: (context, index) {
                  final forum = forums[index];
                  return InkWell(
                    onTap: () {
                      // Navegar a ForumDetailScreen al hacer clic en un foro
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForumDetailScreen(
                            forumName: forum['name']!,
                            forumTitle: forum['title']!,
                            forumStartDate: forum['startDate']!,
                            forumEndDate: forum['endDate']!,
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
                        border: Border.all(color: _accent, width: 2),
                      ),
                      child: Row(
                        children: [
                          // Información del foro (Nombre, Título, Fechas)
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  forum['name']!,
                                  style: const TextStyle(
                                    color: _accent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  forum['title']!,
                                  style: const TextStyle(
                                    color: _textColor,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Inicio: ${forum['startDate']} - Fin: ${forum['endDate']}',
                                  style: const TextStyle(
                                    color: _textColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Estado del foro
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: _accent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              forum['status']!,
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
  const _UserInfo({Key? key}) : super(key: key);

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
