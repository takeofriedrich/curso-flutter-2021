import 'package:aula5/telas/tela_caixa_texto.dart';
import 'package:aula5/telas/tela_imagem.dart';
import 'package:flutter/material.dart';

import 'telas/tela_inicial.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Tela(),
      home: TelaImagem(),
      debugShowCheckedModeBanner: false,
      title: 'Aula 5',
    );
  }
}
