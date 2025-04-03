class UrlTarea {
  final String idUrlTareaFile;
  final String FKTareasEntregadas;
  final String FKUser;
  final String FKUrlTarea;

  UrlTarea({
    required this.idUrlTareaFile,
    required this.FKTareasEntregadas,
    required this.FKUser,
    required this.FKUrlTarea,
  });

  Map<String, dynamic> toMap() {
    return {
      'idUrlTareaFile': idUrlTareaFile,
      'FKTareasEntregadas': FKTareasEntregadas,
      'FKUser': FKUser,
      'FKUrlTarea': FKUrlTarea,
    };
  }

  factory UrlTarea.fromMap(Map<String, dynamic> map) {
    return UrlTarea(
      idUrlTareaFile: map['idUrlTareaFile'],
      FKTareasEntregadas: map['FKTareasEntregadas'],
      FKUser: map['FKUser'],
      FKUrlTarea: map['FKUrlTarea'],
    );
  }
}
