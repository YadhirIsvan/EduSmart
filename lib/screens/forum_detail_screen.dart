import 'package:flutter/material.dart';

class ForumDetailScreen extends StatefulWidget {
  final String forumName;
  final String forumTitle;
  final String forumStartDate;
  final String forumEndDate;

  ForumDetailScreen({
    required this.forumName,
    required this.forumTitle,
    required this.forumStartDate,
    required this.forumEndDate,
  });

  @override
  _ForumDetailScreenState createState() => _ForumDetailScreenState();
}

class _ForumDetailScreenState extends State<ForumDetailScreen> {
  final List<Map<String, String>> responses = [
    {
      'name': 'Carlos Méndez',
      'date': '10 Enero 2025',
      'message': 'Este es un comentario ejemplo sobre el foro. Muy interesante el tema tratado.',
    },
    {
      'name': 'Ana Pérez',
      'date': '11 Enero 2025',
      'message': 'Me parece que la información sobre costos variables es clara y bien explicada.',
    },
  ];

  bool showCommentSection = false;
  final TextEditingController responseController = TextEditingController();
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Foro', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1B1E21),
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
                height: 80,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B1E21),
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

              // Título del Foro
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B1E21),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "FORO",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Nombre del Foro (bajo el título)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFc9a227), // Color amarillo
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.forumTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Información del foro
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Inicio: ${widget.forumStartDate}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Fin: ${widget.forumEndDate}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Línea divisoria
              const Divider(color: Color(0xFFc9a227)),

              const SizedBox(height: 24),

              // Módulos de este foro
              Text(
                "Módulos de este foro",
                style: TextStyle(color: const Color(0xFFc9a227), fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildModuleButton('Módulo 1'),
                  const SizedBox(width: 10),
                  _buildModuleButton('Módulo 2'),
                  const SizedBox(width: 10),
                  _buildModuleButton('Módulo 3'),
                ],
              ),
              const SizedBox(height: 24),

              // Contenedor para descripción del foro y archivos adjuntos
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B1E21),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Descripción del foro: En este foro se discutirá sobre la teoría y ejemplos de costos variables y fijos.',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.picture_as_pdf, color: Colors.red),
                        const SizedBox(width: 8),
                        Text('Documentos relacionados.pdf'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.insert_drive_file, color: Colors.green),
                        const SizedBox(width: 8),
                        Text('Costos_Variables.xlsx'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Cuadro para escribir respuesta
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B1E21),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/images/logo.jpeg"),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: responseController,
                        decoration: InputDecoration(
                          hintText: 'Escribe tu respuesta...',
                          filled: true,
                          fillColor: const Color(0xFF1B1E21),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_upward, color: const Color(0xFFc9a227)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Comentarios de otros usuarios
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: responses.length,
                itemBuilder: (context, index) {
                  final response = responses[index];
                  return Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B1E21),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage("assets/images/logo.jpeg"),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(response['name']!, style: const TextStyle(color: Colors.white)),
                                Text(response['date']!, style: const TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFc9a227),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(response['message']!),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_border, color: Colors.white),
                            ),
                            Text("0", style: TextStyle(color: Colors.white)),
                            const SizedBox(width: 16),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.comment, color: Colors.white),
                            ),
                            Text("0", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModuleButton(String moduleName) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFc9a227),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(moduleName),
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


