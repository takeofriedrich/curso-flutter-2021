import 'dart:typed_data';

import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  final Uint8List? bytes;

  Tela2({this.bytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.memory(bytes!),
      ),
    );
  }
}
