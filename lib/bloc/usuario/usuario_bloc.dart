// Servicio donde se realiza todo el trabajo.

import 'package:bloc/bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:flutter/cupertino.dart';

part 'usuario_state.dart';

part 'usuario_events.dart';

class UsuarioBloc extends Bloc<UsuarioEvents, UsuarioState> {
  //Nos permite inicializar valores.
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvents event) async* {
    if (event is ActivarUsuario) {
      yield state.copyWith(usuario: event.usuario);
    } else if (event is UpdateEdad) {
      yield state.copyWith(usuario: state.usuario.copyWith(edad: event.newEdad));
    } else if (event is AddProfesion) {
      yield state.copyWith(usuario: state.usuario.copyWith(
        profesione: [...state.usuario.profesione, event.newProfesion],
      ));
    } else if (event is DeleteUsuario) {
      yield state.EstadoIncial();
    }
  }
}







