import 'package:aula4_local_notification/telas/tela_inicial.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}
