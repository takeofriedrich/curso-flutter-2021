class Pessoa {
  String? nome;
  static Pessoa? _instance;

  Pessoa._privado();

  factory Pessoa() {
    return _instance ??= Pessoa._privado();
  }
}
