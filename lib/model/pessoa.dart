class Pessoa {
  String _nome;
  double _altura;
  double _peso;

  Pessoa(this._nome, this._altura, this._peso);

  String get nome => _nome;
  void set nome(String nome) => _nome = nome;

  double get altura => _altura;
  void set altura(double altura) => _altura = altura;

  double get peso => _peso;
  void set peso(double peso) => _peso = peso;

  double imc() {
    return _peso / (_altura * _altura);
  }

  @override
  String toString() {
    return "Nome: $_nome, Altura: $_altura, Peso: $_peso, IMC: ${imc()}\n";
  }
}
