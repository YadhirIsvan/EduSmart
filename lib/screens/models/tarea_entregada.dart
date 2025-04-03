class TareaEntregada {
  final String FKTarea;
  final String FKUsuario;
  final String texto;

  TareaEntregada({
    required this.FKTarea,
    required this.FKUsuario,
    required this.texto,
  });

  Map<String, dynamic> toMap() {
    return {
      'FKTarea': FKTarea,
      'FKUsuario': FKUsuario,
      'texto': texto,
    };
  }

  factory TareaEntregada.fromMap(Map<String, dynamic> map) {
    return TareaEntregada(
      FKTarea: map['FKTarea'],
      FKUsuario: map['FKUsuario'],
      texto: map['texto'],
    );
  }
}
