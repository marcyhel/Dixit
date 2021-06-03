import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:dixit/screen/adicionarUsuario/gerenciaUser.dart';
import 'package:dixit/screen/inGame/baralho_mao.dart';
import 'package:dixit/screen/inGame/comfirmar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'menu/menu.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

final User_Mob mob = GetIt.I<User_Mob>();

class _PrincipalState extends State<Principal> {
  PageController _controle = PageController(initialPage: 0);
  void initState() {
    reaction<int>(
      (fn) => mob.pagina,
      (valor) => _controle.jumpToPage(valor), //_controle.animateToPage(valor,
      // duration: Duration(milliseconds: 500), curve: Curves.easeOut),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controle,
      children: [
        Menu(),
        GerenciaUser(),
        Confirmar(),
        Baralho_Mao(),
        Container(color: Colors.green),
      ],
    );
  }
}
