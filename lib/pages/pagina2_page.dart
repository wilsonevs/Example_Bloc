import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/widgets/input_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
      ),
      body: BodyScaffold(),
    );
  }
}

class BodyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);
    final newUsuario = Usuario(
      nombre: 'Wilson',
      apellido: 'Valencia',
      edad: 32,
      profesione: ['full Stack Developer'],
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Inputbutton(title: 'Establecer Usuario',onPressed: () => usuarioBloc.add(ActivarUsuario(newUsuario))),
          Inputbutton(title: 'Cambiar Edad',onPressed: () => usuarioBloc.add(UpdateEdad(33))),
          Inputbutton(title: 'Añadir Profesion',onPressed: () => usuarioBloc.add(AddProfesion('Admistarción'))),
        ],
      ),
    );
  }
}

