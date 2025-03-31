import 'package:flutter/material.dart';

class MeetingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reuniones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "REUNIONES",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para iniciar reunión
              },
              child: Text("Iniciar Reunión"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción para programar reunión
              },
              child: Text("Programar Reunión"),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "ID",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}