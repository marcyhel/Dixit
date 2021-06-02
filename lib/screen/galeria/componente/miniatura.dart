import 'package:dixit/screen/galeria/componente/visualizarCard.dart';
import 'package:flutter/material.dart';


class Miniatura extends StatelessWidget {
  String img;
  Miniatura(this.img);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => VisualizarCard('image/$img.jpg')));
      },
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'image/$img.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
