import 'package:flutter/material.dart';
import 'base_screen.dart';

class ExamsScreen extends StatelessWidget {
  const ExamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exámenes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "EXÁMENES",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Parcial 1"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Acción para comenzar el examen
                      },
                      child: Text("Comenzar"),
                    ),
                  ),
                  ListTile(
                    title: Text("Parcial 2"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Acción para comenzar el examen
                      },
                      child: Text("Comenzar"),
                    ),
                  ),
                  ListTile(
                    title: Text("Parcial 3"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Acción para comenzar el examen
                      },
                      child: Text("Comenzar"),
                    ),
                  ),
                  ListTile(
                    title: Text("Parcial 4"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Acción para comenzar el examen
                      },
                      child: Text("Comenzar"),
                    ),
                  ),
                  ListTile(
                    title: Text("Parcial 5"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Acción para comenzar el examen
                      },
                      child: Text("Comenzar"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}