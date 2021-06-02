import 'package:flutter/material.dart';

//import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class VisualizarCard extends StatefulWidget {
  String img;
  VisualizarCard(this.img);
  @override
  _VisualizarCardState createState() => _VisualizarCardState(img);
}

class _VisualizarCardState extends State<VisualizarCard> {
  String img;
  _VisualizarCardState(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Text('d')
        );
  }
}
