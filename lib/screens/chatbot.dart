import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A40),
        title: const Text("Chatbot IA", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(
        child: Text(
          'Aquí irá el Chatbot IA',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
