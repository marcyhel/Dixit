import 'dart:math';

import 'package:dixit/screen/adicionarUsuario/gerenciaUser.dart';
import 'package:dixit/screen/galeria/galeria.dart';
import 'package:flutter/material.dart';

class ClipperWidget extends CustomClipper<Path> {
  late List<Offset> wavePoints = [];
  BuildContext context;
  int cont;
  ClipperWidget(this.context, this.cont) {
    final double waveSpeed = (cont != 1) ? 2 : 100;
    final double fullSphere = 100;
    final double normalizer = cos(fullSphere);
    final double waveWidth = pi / 150;
    final double waveHeight = 20.0;

    for (int i = 0; i <= 3000; ++i) {
      double calc = sin((waveSpeed - i) * waveWidth);
      wavePoints.add(
        Offset(
          i.toDouble(), //X
          cont != 1
              ? (calc * waveHeight * normalizer +
                  MediaQuery.of(context).size.height / 2)
              : (calc * waveHeight * normalizer +
                  MediaQuery.of(context).size.height / 1.9), //Y
        ),
      );
    }
  }
  @override
  getClip(Size size) {
    final Path path = Path();
    path.addPolygon(wavePoints, false);
    path.lineTo(size.width, 0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Stack(
          children: [
            ClipPath(
                clipper: ClipperWidget(context, 1),
                child: Container(
                  color: Color(0xffD9653B),
                )),
            ClipPath(
                clipper: ClipperWidget(context, 0),
                child: Container(
                  color: Color(0xffD94625),
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GerenciaUser()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 0),
                                blurRadius: 20)
                          ],
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Text("Play",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Galeria()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 0),
                                blurRadius: 20)
                          ],
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Text("Galeria",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
