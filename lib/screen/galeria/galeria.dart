import 'package:dixit/screen/galeria/componente/miniatura.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffD9653B),
        title: Text("Galeria"),
        centerTitle: true,
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(22, (index) {
          return Miniatura(index.toString());
        }),
      ),
    );
  }
}
