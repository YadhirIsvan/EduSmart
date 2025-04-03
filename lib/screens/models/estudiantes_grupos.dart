class EstudiantesGrupos {
  final int id; // ID (clave primaria)
  final int fkEstudiantes; // FK para relacionar al estudiante
  final int fkGrupos; // FK para relacionar al grupo

  // Constructor
  EstudiantesGrupos({
    required this.id,
    required this.fkEstudiantes,
    required this.fkGrupos,
  });

  // Método para convertir un EstudiantesGrupos a un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fkEstudiantes': fkEstudiantes,
      'fkGrupos': fkGrupos,
    };
  }

  // Método para crear un EstudiantesGrupos a partir de un Map
  factory EstudiantesGrupos.fromMap(Map<String, dynamic> map) {
    return EstudiantesGrupos(
      id: map['id'],
      fkEstudiantes: map['fkEstudiantes'],
      fkGrupos: map['fkGrupos'],
    );
  }
}
