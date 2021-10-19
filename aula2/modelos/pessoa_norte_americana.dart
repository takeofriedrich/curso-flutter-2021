import 'boas_vindas.dart';
import 'despedida.dart';
import 'pessoa.dart';

class PessoaNorteAmericana extends Pessoa with BoasVindas, Despedida {
  String? SSN;

  @override
  bool? ehMaiorIdade() {
    return idade! > 22;
  }

  @override
  void falar() {
    print('Hello!');
  }

  @override
  void bemVindo() {
    print('Welcome!');
  }

  @override
  void seDespedir() {
    print('Bye!');
  }
}
