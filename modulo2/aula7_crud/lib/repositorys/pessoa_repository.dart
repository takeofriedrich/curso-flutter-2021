import 'package:aula7_crud/modelos/pessoa.dart';
import 'package:aula7_crud/repositorys/banco_dados.dart';

class PessoaRepository {
  final String sqlSelectAll = 'SELECT * FROM pessoas';
  final String sqlInsert = 'INSERT INTO pessoas (nome) VALUES (?)';
  final String sqlUpdate = 'UPDATE pessoas SET nome = ? WHERE id = ?';
  final String sqlDelete = 'DELETE FROM pessoas WHERE id = ?';

  Future<List<Pessoa>> selectAll() async {
    List<Pessoa> pessoas = [];

    List<Map<String, Object?>> json =
        await BancoDados().db!.rawQuery(sqlSelectAll);

    for (Map<String, Object?> element in json) {
      Pessoa nova = Pessoa.fromMap(element);
      pessoas.add(nova);
    }

    return pessoas;
  }

  // nome: Vinicius -> Takeo
  Future<void> insert(Pessoa pessoa) async {
    await BancoDados().db!.rawInsert(sqlInsert, [pessoa.nome]);
  }

  // nome: Vinicius -> Takeo - id : 1
  Future<void> update(Pessoa pessoa) async {
    await BancoDados().db!.rawUpdate(sqlUpdate, [pessoa.nome, pessoa.id]);
  }

  // Takeo - id : 1
  Future<void> delete(Pessoa pessoa) async {
    await BancoDados().db!.rawDelete(sqlDelete, [pessoa.id]);
  }
}
