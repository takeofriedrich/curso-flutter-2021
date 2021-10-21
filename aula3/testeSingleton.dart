import 'pessoa.dart';

main(List<String> args) {
  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa();
  pessoa1.nome = 'Vinicius';

  print(pessoa1.nome);
  print(pessoa2.nome);

  pessoa2.nome = 'João';

  print(pessoa1.nome);
  print(pessoa2.nome);
}
