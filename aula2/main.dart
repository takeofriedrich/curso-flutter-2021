import 'modelos/boas_vindas.dart';
import 'modelos/despedida.dart';
import 'modelos/periodos_dia.dart';
import 'modelos/pessoa.dart';
import 'modelos/pessoa_brasileira.dart';
import 'modelos/pessoa_norte_americana.dart';

main(List<String> args) {
  Pessoa pessoa = PessoaNorteAmericana();
  pessoa.nome = 'Vinicius';

  print(pessoa);

  PeriodosDia periodosDia = PeriodosDia.Manha;

  print(PeriodosDia.values);

  Pessoa pessoa2 = PessoaBrasileira(fumante: true, idade: 21);

  pessoa.falar();
  (pessoa as BoasVindas).bemVindo();
  (pessoa as Despedida).seDespedir();

  List<BoasVindas> boasVindas = [pessoa as BoasVindas, pessoa2 as BoasVindas];
  boasVindas.forEach((BoasVindas element) {
    element.bemVindo();
  });

  pessoa2.falar();
}
