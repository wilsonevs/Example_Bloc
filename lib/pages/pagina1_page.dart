import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioBloc1 = BlocProvider.of<UsuarioBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                usuarioBloc1.add(DeleteUsuario());
              },
            ),
          ),
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (_, state) => state.existeUsuario
            ? InformacionUsuario(state.usuario)
            : Center(child: Text('No ahi usuario selecionado')),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility_new),
          onPressed: () => Navigator.pushNamed(context, 'pagina2')),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(height: 15),
          ListTile(title: Text('Nombre: ${usuario.nombre}')),
          ListTile(title: Text('Apellido: ${usuario.apellido}')),
          ListTile(title: Text('Edad: ${usuario.edad}')),
          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(height: 15),
          ...usuario.profesione
              .map((profesion) => ListTile(title: Text(profesion)))
              .toList(),
        ],
      ),
    );
  }
}
