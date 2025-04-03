class Usuario {
  final int id;
  final String nombre;
  final int edad;
  final String sexo;
  final String fotoPerfil;

  // Constructor
  Usuario({
    required this.id,
    required this.nombre,
    required this.edad,
    required this.sexo,
    required this.fotoPerfil,
  });

  // Método para convertir un Usuario en un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'edad': edad,
      'sexo': sexo,
      'fotoPerfil': fotoPerfil,
    };
  }

  // Método para crear un Usuario a partir de un Map
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nombre: map['nombre'],
      edad: map['edad'],
      sexo: map['sexo'],
      fotoPerfil: map['fotoPerfil'],
    );
  }
}
