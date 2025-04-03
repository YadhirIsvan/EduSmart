// leccion.dart
class Leccion {
  final String nombre;
  final String tema;
  final int FKCursos;  // Relación con el curso (Foreign Key)
  final String fechaInicio;
  final String descripcion; // Nuevo campo descripcion

  Leccion({
    required this.nombre,
    required this.tema,
    required this.FKCursos,
    required this.fechaInicio,
    required this.descripcion,  // Asegúrate de que la descripción se pase como parámetro
  });
}
