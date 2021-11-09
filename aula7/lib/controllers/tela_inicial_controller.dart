import 'package:aula7/modelos/contato.dart';
import 'package:flutter/material.dart';

class TelaInicialController {
  List<Contato> contatos = [
    Contato(nome: 'Vinicius', telefone: '11111111'),
  ];
  TextEditingController caixaNome = TextEditingController();
  TextEditingController caixaTelefone = TextEditingController();

  void salvarContato() {
    String nomeLido = caixaNome.text;
    String telefoneLido = caixaTelefone.text;

    caixaNome.clear();
    caixaTelefone.clear();

    Contato contato = Contato(nome: nomeLido, telefone: telefoneLido);
    contatos.add(contato);
    print(contatos);
  }
}
