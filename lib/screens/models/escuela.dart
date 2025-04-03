class Escuela {
  final int id; // ID de la escuela (clave primaria)
  final String nombre; // Nombre de la escuela
  final String clave; // Clave única de la escuela
  final String direccion; // Dirección de la escuela
  final String telefono; // Teléfono de contacto de la escuela
  final String email; // Correo electrónico de contacto

  // Constructor
  Escuela({
    required this.id,
    required this.nombre,
    required this.clave,
    required this.direccion,
    required this.telefono,
    required this.email,
  });

  // Método para convertir una Escuela en un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'clave': clave,
      'direccion': direccion,
      'telefono': telefono,
      'email': email,
    };
  }

  // Método para crear una Escuela a partir de un Map
  factory Escuela.fromMap(Map<String, dynamic> map) {
    return Escuela(
      id: map['id'],
      nombre: map['nombre'],
      clave: map['clave'],
      direccion: map['direccion'],
      telefono: map['telefono'],
      email: map['email'],
    );
  }
}
