class Grupo {
  final int id; // ID del grupo (clave primaria)
  final String nombre; // Nombre del grupo (Ej. "Grupo A")
  final int fkEscuela; // FK para la relación con la escuela
  final int years; // Año escolar o periodo
  final String grado; // El grado o nivel (Ej. "Primero", "Segundo", etc.)

  // Constructor
  Grupo({
    required this.id,
    required this.nombre,
    required this.fkEscuela,
    required this.years,
    required this.grado,
  });

  // Método para convertir un Grupo a un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'fkEscuela': fkEscuela,
      'año': years,
      'grado': grado,
    };
  }

  // Método para crear un Grupo a partir de un Map
  factory Grupo.fromMap(Map<String, dynamic> map) {
    return Grupo(
      id: map['id'],
      nombre: map['nombre'],
      fkEscuela: map['fkEscuela'],
      years: map['año'],
      grado: map['grado'],
    );
  }
}
