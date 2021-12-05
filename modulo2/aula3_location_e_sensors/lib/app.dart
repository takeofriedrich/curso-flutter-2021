import 'package:aula3_location_e_sensors/telas/tela_inicial.dart';
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
