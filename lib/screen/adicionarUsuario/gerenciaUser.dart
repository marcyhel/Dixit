import 'package:flutter/material.dart';

import 'componentes/User.dart';

class GerenciaUser extends StatefulWidget {
  @override
  _GerenciaUserState createState() => _GerenciaUserState();
}

class Usuarios {
  String nome;
  String img;
  Usuarios(this.nome, this.img) {}
}

class _GerenciaUserState extends State<GerenciaUser> {
  List<Usuarios> users = [
    Usuarios('marcy', '1'),
    Usuarios('nath', '2'),
    Usuarios('marcy', '1'),
    Usuarios('nath', '2'),
    Usuarios('marcy', '1'),
    Usuarios('nath', '2'),
    Usuarios('marcy', '1'),
    Usuarios('nath', '2'),
    Usuarios('marcy', '1'),
    Usuarios('nath', '2'),
    Usuarios('marcy', '1'),
    Usuarios('nath', '2')
  ];

  @override
  Widget build(BuildContext context) {
    print(users.length);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext contex, int index) {
            return User(users[index].nome);
          }),
    );
  }
}
