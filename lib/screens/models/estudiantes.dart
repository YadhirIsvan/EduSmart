class Estudiante {
  final int id; // ID del estudiante (clave primaria)
  final String nombre; // Nombre del estudiante
  final String email; // Correo electrónico del estudiante (único)
  final String telefono; // Número de teléfono del estudiante
  final String fotoPerfil; // Ruta de la foto de perfil del estudiante
  final int fkGrupo; // FK para relacionar al estudiante con el grupo
  final String estatus; // Estatus del estudiante (Activo, Inactivo, Graduado)

  // Constructor
  Estudiante({
    required this.id,
    required this.nombre,
    required this.email,
    required this.telefono,
    required this.fotoPerfil,
    required this.fkGrupo,
    required this.estatus,
  });

  // Método para convertir un Estudiante a un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'email': email,
      'telefono': telefono,
      'fotoPerfil': fotoPerfil,
      'fkGrupo': fkGrupo,
      'estatus': estatus,
    };
  }

  // Método para crear un Estudiante a partir de un Map
  factory Estudiante.fromMap(Map<String, dynamic> map) {
    return Estudiante(
      id: map['id'],
      nombre: map['nombre'],
      email: map['email'],
      telefono: map['telefono'],
      fotoPerfil: map['fotoPerfil'],
      fkGrupo: map['fkGrupo'],
      estatus: map['estatus'],
    );
  }
}
