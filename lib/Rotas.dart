import 'package:flutter/material.dart';
import 'package:motuber/telas/Cadastro.dart';
import 'package:motuber/telas/Home.dart';
import 'package:motuber/telas/PainelPassageiro.dart';
import 'package:motuber/telas/PainelPiloto.dart';

class Rotas{
  static Route<dynamic> gerarRotas(RouteSettings settings){
    switch( settings.name ){
      case "/":
        return MaterialPageRoute(
            builder: (_)=> Home()
        );
      case "/cadastro":
        return MaterialPageRoute(
            builder: (_)=> Cadastro()
        );
      case "/painel-piloto":
        return MaterialPageRoute(
            builder: (_)=> PainelPiloto()
        );
      case "/painel-passageiro":
        return MaterialPageRoute(
            builder: (_)=> PainelPassageiro()
        );
      default:
        _erroRota();

    }
  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela não encontrada!"),
            ),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }

}