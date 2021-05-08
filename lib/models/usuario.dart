class Usuario {
  final String nombre;
  final String apellido;
  final int edad;
  final List<String> profesione;

  Usuario({this.nombre, this.apellido, this.edad, this.profesione});

  //Me permite crear copias del usuario.
  Usuario copyWith({
          String nombre,
          String apellido,
          int edad,
          List<String> profesione}) =>
      Usuario(
        nombre: nombre ?? this.nombre,
        apellido: apellido ?? this.apellido,
        edad: edad ?? this.edad,
        profesione: profesione ?? this.profesione,
      );
}
