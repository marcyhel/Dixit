import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:dixit/screen/galeria/componente/miniatura.dart';
import 'package:dixit/screen/inGame/componentes/cartas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Baralho_Mao extends StatefulWidget {
  @override
  _Baralho_MaoState createState() => _Baralho_MaoState();
}

class _Baralho_MaoState extends State<Baralho_Mao> {
  final User_Mob mob = GetIt.I<User_Mob>();
  @override
  void initState() {
    mob.desbloqueado = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  mob.usuarios_list[mob.indexUserAtivo].deck.cartas.length,
                  (index) {
                return Cartas(
                  mob.usuarios_list[mob.indexUserAtivo].deck.cartas[index]
                      .toString(),
                );
              }),
            ),
          ),
          Text("Selecione uma carta",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Observer(builder: (_) {
            return GestureDetector(
              onTap: (mob.desbloqueado)
                  ? () {
                      print('proxi');
                      mob.pagina = 3;
                    }
                  : null,
              child: Container(
                padding:
                    EdgeInsets.only(left: 55, right: 55, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color:
                            (mob.desbloqueado) ? Colors.black12 : Colors.white,
                        offset: Offset(0, 0),
                        blurRadius: 20)
                  ],
                  color:
                      (mob.desbloqueado) ? Colors.blue[300] : Colors.grey[200],
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Text("Confirmar carta",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            );
          }),
        ],
      ),
    );
  }
}
