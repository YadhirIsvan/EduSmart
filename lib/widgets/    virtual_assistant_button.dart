import 'package:flutter/material.dart';
import '../screens/virtual_assistant_screen.dart';

class VirtualAssistantButton extends StatelessWidget {
  const VirtualAssistantButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue, // Color acorde a los mockups
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VirtualAssistantScreen()),
        );
      },
      child: const Icon(Icons.chat, color: Colors.white),
    );
  }
}
