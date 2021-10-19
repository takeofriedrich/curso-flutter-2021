import 'boas_vindas.dart';
import 'despedida.dart';
import 'pessoa.dart';

class PessoaBrasileira extends Pessoa with BoasVindas, Despedida {
  @override
  void falar() {
    print('Olá!');
  }

  PessoaBrasileira({bool? fumante, int? idade})
      : super(fumante: fumante, idade: idade);

  @override
  void bemVindo() {
    print('Bem-vindo!');
  }

  @override
  void seDespedir() {
    print('Tchau!');
  }
}
