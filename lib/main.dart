import 'package:flutter/material.dart';
import 'package:motuber/Rotas.dart';
import 'package:motuber/telas/Home.dart';
import 'package:firebase_core/firebase_core.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xff2A4D69),
  accentColor: Color(0xffADCBE3),
);

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "Motuber",
    home: Home(),
    theme: temaPadrao,
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,
  ));
}
