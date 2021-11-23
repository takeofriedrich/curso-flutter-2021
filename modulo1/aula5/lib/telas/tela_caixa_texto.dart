import 'package:flutter/material.dart';

class TelaCaixaTexto extends StatefulWidget {
  const TelaCaixaTexto({Key? key}) : super(key: key);

  @override
  _TelaCaixaTextoState createState() => _TelaCaixaTextoState();
}

class _TelaCaixaTextoState extends State<TelaCaixaTexto> {
  TextEditingController caixa = TextEditingController(text: 'takeo@gmail.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            controller: caixa,
            decoration: const InputDecoration(
              hintText: 'takeo@gmail.com',
            ),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(caixa.text);
          caixa.clear();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
