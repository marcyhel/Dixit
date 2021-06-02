import 'package:dixit/screen/adicionarUsuario/gerenciaUser.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'menu/menu.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}
final Mob_Drawer mob = GetIt.I<Mob_Drawer>();

class Mob_Drawer {
}
class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Menu(),
        GerenciaUser(),
        Container(color: Colors.green),
      ],
    );
  }
}
