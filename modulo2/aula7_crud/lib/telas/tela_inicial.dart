import 'package:aula7_crud/controllers/tela_inicial_controller.dart';
import 'package:aula7_crud/repositorys/banco_dados.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
