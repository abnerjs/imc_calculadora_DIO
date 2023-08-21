// Path: lib\pessoa\pessoa.dart

class NomeInvalidoException implements Exception {
  final String _msg = "Nome inválido!";
  String get msg => _msg;
}

class AlturaInvalidaException implements Exception {
  final String _msg = "Altura inválida!";
  String get msg => _msg;
}

class PesoInvalidoException implements Exception {
  final String _msg = "Peso inválido!";
  String get msg => _msg;
}
