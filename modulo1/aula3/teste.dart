main(List<String> args) {
  soma(4, 5).whenComplete(() => print('acabou de calcular a soma'));
  soma(4, 5).then((x) => print('acabou de calcular a soma que é $x'));
}

Future<int> soma(int a, int b) async {
  await Future.delayed(Duration(seconds: 2));
  return a + b;
}
