import 'package:aula7/modelos/contato.dart';
import 'package:flutter/material.dart';

class ContatoWidget extends StatelessWidget {
  final Contato contato;

  ContatoWidget({required this.contato});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text(contato.nome!),
        subtitle: Text('Telefone: ${contato.telefone!}'),
      ),
      onTap: () {
        print('Pressionou o contato: ${contato.nome}');
      },
      onLongPress: () {
        print('Pressionou o contato por mais tempo: ${contato.nome}');
      },
      onDoubleTap: () {
        print('Dois cliques sobre o contato: ${contato.nome}');
      },
    );
  }
}
