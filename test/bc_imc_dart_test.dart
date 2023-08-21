import 'package:bc_imc_dart/enum/tipo_imc.dart';
import 'package:bc_imc_dart/model/pessoa.dart';
import 'package:bc_imc_dart/utils/grau_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Magreza Grave', () {
    var pessoa = Pessoa("João", 1.70, 40);
    expect(grauIMC(pessoa), TipoIMC.magrezaGrave);
  });

  test('Magreza Moderada', () {
    var pessoa = Pessoa("João", 1.70, 47);
    expect(grauIMC(pessoa), TipoIMC.magrezaModerada);
  });
  test('Magreza Leve', () {
    var pessoa = Pessoa("João", 1.70, 50);
    expect(grauIMC(pessoa), TipoIMC.magrezaLeve);
  });

  test('Saudável', () {
    var pessoa = Pessoa("João", 1.70, 70);
    expect(grauIMC(pessoa), TipoIMC.saudavel);
  });

  test('Sobrepeso', () {
    var pessoa = Pessoa("João", 1.70, 85);
    expect(grauIMC(pessoa), TipoIMC.sobrepeso);
  });

  test('Obesidade 1', () {
    var pessoa = Pessoa("João", 1.70, 100);
    expect(grauIMC(pessoa), TipoIMC.obesidade1);
  });

  test('Obesidade 2', () {
    var pessoa = Pessoa("João", 1.70, 110);
    expect(grauIMC(pessoa), TipoIMC.obesidade2);
  });

  test('Obesidade 3', () {
    var pessoa = Pessoa("João", 1.70, 120);
    expect(grauIMC(pessoa), TipoIMC.obesidade3);
  });
}
