import 'exceptions/valor_negativo_exception.dart';

main(List<String> args) async {
  List<int> valores = [1, 0, -3, 4];
  try {
    print(somaLista(valores));
  } on ValorNegativoException catch (e) {
    print('capturado negativo!');
  } on Exception catch (e) {
    print(e);
  }
  somaLista2(valores).then((x) => print(x)).catchError((e) => print(e));
  somaLista2(valores).then((x) => print(x)).onError((e, stack) => print(e));

  print('codigo continuou executando');
}

int somaLista(List<int> inteiros) {
  int soma = 0;
  for (int i = 0; i < inteiros.length; i++) {
    if (inteiros[i] == 0) {
      throw Exception('Valor é zero');
    } else if (inteiros[i].isNegative) {
      throw ValorNegativoException();
    }
    soma += inteiros[i];
  }

  return soma;
}

Future<int> trataErro(int x) async {
  print(x);
  return 3;
}

Future<int> somaLista2(List<int> inteiros) async {
  int soma = 0;
  await Future.delayed(Duration(seconds: 2));
  for (int i = 0; i < inteiros.length; i++) {
    if (inteiros[i].isNegative) {
      throw ValorNegativoException();
    }
    soma += inteiros[i];
  }
  return soma;
}
