class Pessoa {
  String _nome;
  double _altura;
  double _peso;

  Pessoa(this._nome, this._altura, this._peso);

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  double get altura => _altura;
  set altura(double altura) => _altura = altura;

  double get peso => _peso;
  set peso(double peso) => _peso = peso;

  double imc() {
    return _peso / (_altura * _altura);
  }

  @override
  String toString() {
    return "Nome: $_nome, Altura: ${_altura}m, Peso: ${_peso}kg, IMC: ${imc().toStringAsFixed(2)}";
  }

  String pesoIdeal() {
    double imcMin = 18.5;
    double imcMax = 25.0;
    var pesoMin = imcMin * (_altura * _altura);
    var pesoMax = imcMax * (_altura * _altura);

    return "Peso ideal: ${pesoMin.toStringAsFixed(2)}kg - ${pesoMax.toStringAsFixed(2)}kg";
  }
}
