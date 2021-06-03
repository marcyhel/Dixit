import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Confirmar extends StatefulWidget {
  @override
  _ConfirmarState createState() => _ConfirmarState();
}

class _ConfirmarState extends State<Confirmar> {
  final User_Mob mob = GetIt.I<User_Mob>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
            ),
            Observer(builder: (_) {
              return GestureDetector(
                onTap: () {
                  mob.desbloqueado = true;
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 0),
                          blurRadius: 20)
                    ],
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5000.0),
                    child: Image.asset(
                      'image/avatar/' +
                          mob.usuarios_list[mob.indexUserAtivo].img +
                          'av.jpg',
                      fit: BoxFit.fill,
                      color: (mob.desbloqueado) ? null : Colors.blueGrey[900],
                      colorBlendMode:
                          (mob.desbloqueado) ? null : BlendMode.softLight,
                    ),
                  ),
                ),
              );
            }),
            Text(
              mob.usuarios_list[mob.indexUserAtivo].nome,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                "Entregue o Dispositivo para este(a) jogador(a). Clique no perfil a cima quado estiver proto(a).",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
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
                          color: (mob.desbloqueado)
                              ? Colors.black12
                              : Colors.white,
                          offset: Offset(0, 0),
                          blurRadius: 20)
                    ],
                    color: (mob.desbloqueado) ? Colors.blue[300] : Colors.white,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Text("Mostrar Cartas",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              );
            }),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
