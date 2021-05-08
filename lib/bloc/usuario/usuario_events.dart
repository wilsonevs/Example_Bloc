// Van a disparar acciones que va recibir mi bloc,
// Esas acciones van a modificar el estado
// clase abstract permite controlar que eventos va manejar mi bloc
// Las acciones que van a modificar los estados.

//part of => Hijo del padre
part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvents{}

class ActivarUsuario extends UsuarioEvents{
  ActivarUsuario(this.usuario);
  final Usuario usuario;
}

class UpdateEdad extends UsuarioEvents{
  UpdateEdad(this.newEdad);
  final int newEdad;
}

class AddProfesion extends UsuarioEvents{
  AddProfesion(this.newProfesion);
  final String newProfesion;
}

class DeleteUsuario extends UsuarioEvents{}