abstract class Pessoa {
  String? _nome; // privado
  int? idade; // publica
  bool? fumante; // publica

  // Pessoa({required String? nome, required int? idade, required bool? fumante}) {
  //   _nome = nome;
  //   this.idade = idade;
  //   this.fumante = fumante;
  // }

  Pessoa({this.fumante = true, this.idade});
  Pessoa.soFumante({this.fumante = true});

  bool? ehMaiorIdade() {
    return idade! > 18;
  }

  void falar();

  set nome(String nome) => _nome = nome;

  String get nome => _nome!;

  @override
  String toString() {
    return '${this.nome} - ${this.idade} - ${this.fumante}';
  }
}
