import 'dart:math';

import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CriaUser extends StatefulWidget {
  @override
  _CriaUserState createState() => _CriaUserState();
}

final User_Mob mob = GetIt.I<User_Mob>();

class _CriaUserState extends State<CriaUser> {
  String img = Random().nextInt(4).toString();
  void aleatoriza() {
    img = Random().nextInt(4).toString();
    setState(() {});
  }

  final _contro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffD9653B),
        ),
        body: SingleChildScrollView(
                  child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/15,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
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
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5000.0),
                        child: Image.asset(
                          'image/avatar/' + img + 'av.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Positioned(
                      right: 7,
                      bottom: -7,
                      child: GestureDetector(
                        onTap: aleatoriza,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 0),
                                  blurRadius: 20)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: Icon(Icons.refresh_rounded,
                              size: 40, color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                SizedBox(height: MediaQuery.of(context).size.height/10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 0),
                            blurRadius: 20)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black38),
                          hintText: 'Ex: Maria',
                          border: InputBorder.none,
                        ),
                        controller: _contro,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/10,),
                GestureDetector(
                  onTap: () {
                    if (_contro.text == "") {
                      print("não pode");
                      final snackBar = SnackBar(
                        duration: Duration(milliseconds: 800),
                        backgroundColor: Colors.red.shade400,
                        content: Text('Precisa de um Nome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      );

                      // Find the ScaffoldMessenger in the widget tree
                      // and use it to show a SnackBar.
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      mob.addUsuario(_contro.text, img);
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 0),
                            blurRadius: 20)
                      ],
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    child: Text("Salvar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ));
  }
}
