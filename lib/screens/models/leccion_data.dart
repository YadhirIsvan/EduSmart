import 'leccion.dart';  // Asegúrate de tener el modelo 'Leccion'

List<Leccion> lecciones = [
  // Lecciones para el curso de Matemáticas
  Leccion(nombre: "Lección 1", tema: "Álgebra Básica", FKCursos: 1, fechaInicio: "2025-09-01", descripcion: "Introducción a los conceptos básicos de álgebra."),
  Leccion(nombre: "Lección 2", tema: "Geometría", FKCursos: 1, fechaInicio: "2025-09-08", descripcion: "Estudio de figuras y propiedades geométricas."),
  Leccion(nombre: "Lección 3", tema: "Cálculo Diferencial", FKCursos: 1, fechaInicio: "2025-09-15", descripcion: "Cálculo de derivadas y su aplicación."),
  Leccion(nombre: "Lección 4", tema: "Cálculo Integral", FKCursos: 1, fechaInicio: "2025-09-22", descripcion: "Estudio de integrales y sus aplicaciones."),
  Leccion(nombre: "Lección 5", tema: "Álgebra Lineal", FKCursos: 1, fechaInicio: "2025-09-29", descripcion: "Teoría de matrices, determinantes y espacios vectoriales."),
  Leccion(nombre: "Lección 6", tema: "Trigonometría", FKCursos: 1, fechaInicio: "2025-10-06", descripcion: "Estudio de funciones trigonométricas y sus aplicaciones."),
  Leccion(nombre: "Lección 7", tema: "Probabilidades y Estadística", FKCursos: 1, fechaInicio: "2025-10-13", descripcion: "Fundamentos de la probabilidad y análisis estadístico."),
  Leccion(nombre: "Lección 8", tema: "Ecuaciones Diferenciales", FKCursos: 1, fechaInicio: "2025-10-20", descripcion: "Estudio de ecuaciones diferenciales y sus métodos."),
  Leccion(nombre: "Lección 9", tema: "Geometría Analítica", FKCursos: 1, fechaInicio: "2025-10-27", descripcion: "Estudio de puntos, rectas y cónicas en el plano."),
  Leccion(nombre: "Lección 10", tema: "Optimización", FKCursos: 1, fechaInicio: "2025-11-03", descripcion: "Estudio de técnicas para la optimización de funciones."),
  
  // Lecciones para el curso de Lengua y Literatura
  Leccion(nombre: "Lección 1", tema: "Literatura Clásica", FKCursos: 2, fechaInicio: "2025-09-01", descripcion: "Estudio de los textos fundamentales de la literatura clásica."),
  Leccion(nombre: "Lección 2", tema: "Literatura Moderna", FKCursos: 2, fechaInicio: "2025-09-08", descripcion: "Análisis de los movimientos literarios del siglo XIX y XX."),
  Leccion(nombre: "Lección 3", tema: "Poesía", FKCursos: 2, fechaInicio: "2025-09-15", descripcion: "Estudio de la poesía en sus diversas formas."),
  Leccion(nombre: "Lección 4", tema: "Narrativa", FKCursos: 2, fechaInicio: "2025-09-22", descripcion: "Análisis de la narrativa y sus formas de expresión."),
  Leccion(nombre: "Lección 5", tema: "Teatro", FKCursos: 2, fechaInicio: "2025-09-29", descripcion: "Estudio de las obras teatrales fundamentales."),
  Leccion(nombre: "Lección 6", tema: "Ensayo Literario", FKCursos: 2, fechaInicio: "2025-10-06", descripcion: "Escritura y análisis de ensayos literarios."),
  Leccion(nombre: "Lección 7", tema: "Análisis de Texto", FKCursos: 2, fechaInicio: "2025-10-13", descripcion: "Métodos para analizar textos literarios en profundidad."),
  Leccion(nombre: "Lección 8", tema: "Crítica Literaria", FKCursos: 2, fechaInicio: "2025-10-20", descripcion: "Teoría y práctica de la crítica literaria."),
  Leccion(nombre: "Lección 9", tema: "Teoría Literaria", FKCursos: 2, fechaInicio: "2025-10-27", descripcion: "Fundamentos de la teoría literaria y sus enfoques."),
  Leccion(nombre: "Lección 10", tema: "Literatura Comparada", FKCursos: 2, fechaInicio: "2025-11-03", descripcion: "Estudio comparativo de literaturas de diferentes culturas."),

  // Lecciones para el curso de Física
  Leccion(nombre: "Lección 1", tema: "Cinemática", FKCursos: 3, fechaInicio: "2025-09-01", descripcion: "Estudio del movimiento de los objetos."),
  Leccion(nombre: "Lección 2", tema: "Dinámica", FKCursos: 3, fechaInicio: "2025-09-08", descripcion: "Estudio de las fuerzas y su relación con el movimiento."),
  Leccion(nombre: "Lección 3", tema: "Termodinámica", FKCursos: 3, fechaInicio: "2025-09-15", descripcion: "Principios básicos de la termodinámica."),
  Leccion(nombre: "Lección 4", tema: "Electromagnetismo", FKCursos: 3, fechaInicio: "2025-09-22", descripcion: "Estudio de los fenómenos eléctricos y magnéticos."),
  Leccion(nombre: "Lección 5", tema: "Óptica", FKCursos: 3, fechaInicio: "2025-09-29", descripcion: "Estudio de la luz, sus propiedades y aplicaciones."),
  Leccion(nombre: "Lección 6", tema: "Acústica", FKCursos: 3, fechaInicio: "2025-10-06", descripcion: "Estudio del sonido y sus propiedades."),
  Leccion(nombre: "Lección 7", tema: "Física Moderna", FKCursos: 3, fechaInicio: "2025-10-13", descripcion: "Introducción a la física cuántica y relativista."),
  Leccion(nombre: "Lección 8", tema: "Relatividad", FKCursos: 3, fechaInicio: "2025-10-20", descripcion: "Estudio de la teoría de la relatividad de Einstein."),
  Leccion(nombre: "Lección 9", tema: "Mecánica Cuántica", FKCursos: 3, fechaInicio: "2025-10-27", descripcion: "Fundamentos de la mecánica cuántica."),
  Leccion(nombre: "Lección 10", tema: "Física Nuclear", FKCursos: 3, fechaInicio: "2025-11-03", descripcion: "Estudio de las reacciones nucleares y su aplicación."),

  // Lecciones para el curso de Química
  Leccion(nombre: "Lección 1", tema: "Química General", FKCursos: 4, fechaInicio: "2025-09-01", descripcion: "Fundamentos de la química general."),
  Leccion(nombre: "Lección 2", tema: "Química Orgánica", FKCursos: 4, fechaInicio: "2025-09-08", descripcion: "Estudio de los compuestos orgánicos."),
  Leccion(nombre: "Lección 3", tema: "Química Inorgánica", FKCursos: 4, fechaInicio: "2025-09-15", descripcion: "Estudio de los compuestos inorgánicos."),
  Leccion(nombre: "Lección 4", tema: "Reacciones Químicas", FKCursos: 4, fechaInicio: "2025-09-22", descripcion: "Estudio de las reacciones y ecuaciones químicas."),
  Leccion(nombre: "Lección 5", tema: "Análisis Cuantitativo", FKCursos: 4, fechaInicio: "2025-09-29", descripcion: "Técnicas de análisis cuantitativo en química."),
  Leccion(nombre: "Lección 6", tema: "Química Analítica", FKCursos: 4, fechaInicio: "2025-10-06", descripcion: "Métodos de análisis en química analítica."),
  Leccion(nombre: "Lección 7", tema: "Bioquímica", FKCursos: 4, fechaInicio: "2025-10-13", descripcion: "Estudio de los procesos bioquímicos en organismos."),
  Leccion(nombre: "Lección 8", tema: "Química Física", FKCursos: 4, fechaInicio: "2025-10-20", descripcion: "Estudio de la química desde una perspectiva física."),
  Leccion(nombre: "Lección 9", tema: "Polímeros", FKCursos: 4, fechaInicio: "2025-10-27", descripcion: "Estudio de los polímeros y su fabricación."),
  Leccion(nombre: "Lección 10", tema: "Materiales", FKCursos: 4, fechaInicio: "2025-11-03", descripcion: "Estudio de los materiales y sus propiedades."),
];
