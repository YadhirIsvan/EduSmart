import 'package:flutter/material.dart';
import 'package:my_app/widgets/    virtual_assistant_button.dart';

class BaseScreen extends StatelessWidget {
  final String title;
  final Widget body;

  const BaseScreen({required this.title, required this.body, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar acorde a los mockups (fondo blanco, texto oscuro y estilo consistente)
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: body,
      // Todas las pantallas (menos login y registro) tendrán el botón del asistente virtual
      floatingActionButton: const VirtualAssistantButton(),
    );
  }
}
