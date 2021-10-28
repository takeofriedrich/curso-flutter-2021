import 'package:aula4/telas/tela_principal.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aula4',
      home: TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
