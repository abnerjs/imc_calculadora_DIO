import 'package:bc_imc_dart/model/pessoa.dart';
import 'package:bc_imc_dart/utils/grau_imc.dart';
import 'package:bc_imc_dart/utils/read_console.dart';

void execute() {
  String nome = readString("Insira seu nome: ", "Nome inválido!");
  double altura =
      readDouble("\nInsira sua altura em metros: ", "Altura inválida!");
  double peso =
      readDouble("\nInsira seu peso em quilogramas: ", "Peso inválido!");

  var pessoa = Pessoa(nome, altura, peso);
  print('\n$pessoa');
  print("${pessoa.imc().toStringAsFixed(2)} - ${grauIMC(pessoa).value}");
  print(pessoa.pesoIdeal());
}
