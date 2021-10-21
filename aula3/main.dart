main(List<String> args) async {
  // print('ANTES');
  // Future futuro = Future.delayed(Duration(seconds: 2));
  // futuro.whenComplete(imprimeOi);
  // print('DEPOIS');

  int x = await somaLista([1, 2, 3, 4, 5]);
  x = x + x;
  int y;
  somaLista([1, 2, 3, 4, 5]).then((value) {
    y = value + value;
  });
}

void imprimeOi() {
  print('oi');
}

Future<int> somaLista(List<int> inteiros) async {
  int soma = 0;
  await Future.delayed(Duration(seconds: 2));
  for (int i = 0; i < inteiros.length; i++) {
    soma += inteiros[i];
  }
  return soma;
}

void funcaoDobra(int soma) {
  print(soma + soma);
}
