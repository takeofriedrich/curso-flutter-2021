void main() {
  int x = 3;
  var y = 4;

  int z = int.parse('30');

  bool booleana2 = false;

  String palavra1 = 'Vinicius';
  String palavra2 = "Vinicius\nTakeo\nFriedrich";

  print('Valor: ${x.isOdd}');
  print('Valor: $x');

  print('Valor: ' + x.toString());

  List<String> comidas = ['Macarrão', 'Batata'];
  List listaGenerica = ['Vinicius', 21, true];

  List<String> comidas2 = [];

  print(comidas[0]);

  Map<String, List<int>> listas = {
    'primos': [2, 3, 5, 7],
    'pares': [2, 4, 6, 8],
  };

  print(listas);
  listas.remove('primos');

  // List<int> valores = listas['primos']!;

  Map generico = {};

  x = -1;

  if (x > 3) {
    print(x);
  } else {
    print('x nao maior que 3 nem -1');
  }

  x > 3 ? print('x') : print('x nao maior que 3 nem -1');

  List<int> primos = [2, 3, 5, 7, 11];

  // for (int i = 0; i < primos.length; i++) {
  //   print(primos[i]);
  // }

  for (int x in primos) {
    print(x);
  }

  primos.forEach(printaValor);

  Map listas2 = {
    'primos': [2, 3, 5, 7],
    'pares': [2, 4, 6, 8],
  };

  print(listas2![2]);

  listas2.forEach((key, value) {
    print(value);
  });

  soma2(3, 1);
  soma3(
    x: 3,
    y: 7,
  );
  soma3(
    y: 7,
    x: 3,
  );
  // soma2(x: 4);

  late int nova;
  nova = 3;

  int? nova2 = 4;

  if (nova2 != null) {
    int nova4 = nova2!;
  }

  int nova3;
}

int soma3({required int x, required int y}) => x + y;

int soma2([int x = 3, int y = 2]) => x + y;

void printaValor(int x) {
  print(x);
}

void printaValor2(String k, List<int> v) {
  print(v);
}

// x = '2' y = '2'
soma(x, y) {
  return x + y;
}
