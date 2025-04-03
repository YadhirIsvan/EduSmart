// lib/models/curso.dart
class Curso {
  final String nombre;
  final String descripcion;
  final int FKCursos; // Esto parece ser un ID o clave foránea.

  // Constructor
  Curso({required this.nombre, required this.descripcion, required this.FKCursos});

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'descripcion': descripcion,
    };
  }

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      nombre: map['nombre'],
      descripcion: map['descripcion'],
      FKCursos: map['FKCursos']
    );
  }
}

