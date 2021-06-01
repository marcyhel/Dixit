import 'dart:math';

import 'package:flutter/material.dart';

class User extends StatelessWidget {
  String nome;

  List<Color> cor = [
    Colors.amber.shade300,
    Colors.blue.shade300,
    Colors.blue.shade100,
    Colors.purple.shade200,
    Colors.green.shade200,
  ];
  Random rand = Random();

  User(this.nome);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: cor[rand.nextInt(cor.length)],
              borderRadius: BorderRadius.circular(200),
            ),
            height: 50,
            width: 50,
            child: Center(
              child: Text(
                nome[0].toUpperCase(),
              ),
            ),
          ),
          title: Text(nome),
          trailing: Icon(Icons.edit),
        ),
      ),
    );
  }
}
