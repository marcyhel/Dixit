import 'package:dixit/Mobx/user/user_mob.dart';
import 'package:dixit/screen/principal.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  singletonsApp();
  runApp(MyApp());
}
void singletonsApp() {
  GetIt.I.registerSingleton(User_Mob());
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Principal(),
    );
  }
}
