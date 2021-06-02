import 'dart:math';

import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final User_Mob mob = GetIt.I<User_Mob>();

class User extends StatelessWidget {
  String nome;
  String img;
  List<Color> cor = [
    Colors.amber.shade300,
    Colors.blue.shade300,
    Colors.blue.shade100,
    Colors.purple.shade200,
    Colors.green.shade200,
  ];
  Random rand = Random();

  User(this.nome, this.img);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (e) {
        mob.removeUsuario(nome, img);
        final snackBar = SnackBar(
          duration: Duration(milliseconds: 800),
          backgroundColor: Colors.blue.shade400,
          content: Text('$nome removido',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        );

        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar.
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      background: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0x55D9653B),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.clear, color: Color(0xffD94625)),
                SizedBox(width: 50),
                SizedBox(width: 50),
                SizedBox(width: 50),
                Icon(Icons.clear, color: Color(0xffD94625))
              ],
            )),
      ),
      key: UniqueKey(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              height: 50,
              width: 50,
              child: Center(
                child: Image.asset(
                  'image/avatar/$img' + 'av.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(nome),
            trailing: Icon(Icons.edit),
          ),
        ),
      ),
    );
  }
}
