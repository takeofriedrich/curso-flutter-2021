import 'package:aula7_crud/modelos/pessoa.dart';
import 'package:aula7_crud/repositorys/pessoa_repository.dart';
import 'package:flutter/widgets.dart';

class TelaInicialController {
  List<Pessoa> pessoas = [Pessoa(nome: 'Vinicius')];
  TextEditingController nomePessoa = TextEditingController();
  PessoaRepository repository = PessoaRepository();

  Future<void> buscarPessoas() async {
    await repository.selectAll().then((value) => pessoas = value);
  }

  Future<void> cadastrar() async {
    Pessoa pessoa = Pessoa(nome: nomePessoa.text);
    nomePessoa.clear();
    await repository.insert(pessoa);
  }

  Future<void> remover(int i) async {
    Pessoa pessoa = pessoas[i];
    await repository.delete(pessoa);
  }
}
