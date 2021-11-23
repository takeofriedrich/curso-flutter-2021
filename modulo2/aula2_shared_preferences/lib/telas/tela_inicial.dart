import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaInicial extends StatelessWidget {
  SharedPreferences? sharedPreferences;

  TelaInicial() {
    SharedPreferences.getInstance()
        .then((value) => {sharedPreferences = value});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                sharedPreferences!.setString('nome', 'Vinicius');
              },
              child: Text('Salvar dados'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String? valor = sharedPreferences!.getString('nome');
              print(valor);
            },
            child: Text('Buscar dados'),
          ),
        ],
      ),
    );
  }
}
