import 'package:flutter/material.dart';

class ForosScreen extends StatelessWidget {
  const ForosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40), // Azul oscuro para la barra superior
        title: const Text(
          'Foros',
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
              "¿En qué estás pensando...?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Caja de texto para escribir un mensaje en el foro
            _buildTextField(),

            const SizedBox(height: 20),

            // Títulos de los posts o comentarios en el foro
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Número de posts o comentarios
                itemBuilder: (context, index) {
                  return _buildForumPost(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Caja de texto para escribir en el foro
  Widget _buildTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Escribe aquí...',
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      maxLines: 3,
      style: const TextStyle(color: Colors.black),
    );
  }

  // Función para construir un post del foro
  Widget _buildForumPost(int index) {
    return Card(
      color: const Color(0xFFF5F5F5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Usuario $index",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "El material utilizado es premium. El material es grueso y suave, pero no lo hace caliente. Muy adecuado para trabajo o uso diario.",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              "Hace 30 minutos",
              style: const TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
