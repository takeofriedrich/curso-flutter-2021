class Pessoa {
  int? id;
  String? nome;

  Pessoa({this.id, this.nome});

  Pessoa.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
  }

  // {
  //   "id" : 0,
  //   "nome" : "Vinicius"
  // }

  // CREATE TABLE pessoas ( id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT )

}
