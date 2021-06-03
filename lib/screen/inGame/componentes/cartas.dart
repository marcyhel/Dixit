import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:dixit/screen/galeria/componente/visualizarCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Cartas extends StatelessWidget {
  final User_Mob mob = GetIt.I<User_Mob>();
  String img;
  Cartas(this.img);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          mob.cartasCelecionada = img;
          mob.desbloqueado = true;
          print(mob.cartasCelecionada);
        },
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 1.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  'image/$img.jpg',
                  fit: BoxFit.fitHeight,
                  color: (mob.cartasCelecionada == img)
                      ? Colors.orange[700]
                      : null,
                  colorBlendMode: (mob.cartasCelecionada == img)
                      ? BlendMode.softLight
                      : null,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
