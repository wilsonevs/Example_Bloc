import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  final newUsuario = Usuario(
    nombre: 'Wilson',
    apellido: 'Valencia',
    edad: 32,
    profesione: ['full Stack Developer'],
  );

  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text('Establecer Usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: () => usuarioBloc.add(ActivarUsuario(newUsuario)),
          ),
          MaterialButton(
            child: Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: () => usuarioBloc.add(UpdateEdad(33)),
          ),
          MaterialButton(
            child:
                Text('Añadir Profesion', style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: () => usuarioBloc.add(AddProfesion('Admistarción')),
          ),
        ],
      )),
    );
  }
}
