import 'package:bc_imc_dart/model/pessoa.dart';

void execute() {
  var pessoa = Pessoa("João", 1.70, 70);
  print(pessoa);
  pessoa.nome = "Maria";
  pessoa.altura = 1.60;
  pessoa.peso = 60;
  print(pessoa);
  print("IMC: ${pessoa.imc()}");
}
