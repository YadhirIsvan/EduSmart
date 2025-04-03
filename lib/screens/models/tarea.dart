class Tarea {
  final String nombre;
  final DateTime fechaInicioHora;
  final DateTime fechaFinalizaHora;
  final String FKCursos;
  final String FKTarea;
  final String modulos;

  Tarea({
    required this.nombre,
    required this.fechaInicioHora,
    required this.fechaFinalizaHora,
    required this.FKCursos,
    required this.FKTarea,
    required this.modulos,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'fechaInicioHora': fechaInicioHora.toIso8601String(),
      'fechaFinalizaHora': fechaFinalizaHora.toIso8601String(),
      'FKCursos': FKCursos,
      'FKTarea': FKTarea,
      'modulos': modulos,
    };
  }

  factory Tarea.fromMap(Map<String, dynamic> map) {
    return Tarea(
      nombre: map['nombre'],
      fechaInicioHora: DateTime.parse(map['fechaInicioHora']),
      fechaFinalizaHora: DateTime.parse(map['fechaFinalizaHora']),
      FKCursos: map['FKCursos'],
      FKTarea: map['FKTarea'],
      modulos: map['modulos'],
    );
  }
}
