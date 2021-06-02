import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:dixit/screen/adicionarUsuario/componentes/criaUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

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
  final User_Mob mob = GetIt.I<User_Mob>();
  @override
  void dispose() {
    print('saindo');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD9653B),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
                mob.pagina = 2;
              },
              child: Text('Pronto'))
        ],
      ),
      body: SingleChildScrollView(
        child: Observer(builder: (_) {
          print('d');
          return Column(
            children: <Widget>[
              ...mob.usuarios_list.map((item) {
                return User(item.nome, item.img);
              }).toList(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CriaUser()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Icon(
                        Icons.add_rounded,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
