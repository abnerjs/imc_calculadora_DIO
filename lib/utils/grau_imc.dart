import '../enum/tipo_imc.dart';
import '../model/pessoa.dart';

TipoIMC grauIMC(Pessoa pessoa) {
  var imc = pessoa.imc();

  if (imc < 16) {
    return TipoIMC.magrezaGrave;
  } else if (imc < 17) {
    return TipoIMC.magrezaModerada;
  } else if (imc < 18.5) {
    return TipoIMC.magrezaLeve;
  } else if (imc < 25) {
    return TipoIMC.saudavel;
  } else if (imc < 30) {
    return TipoIMC.sobrepeso;
  } else if (imc < 35) {
    return TipoIMC.obesidade1;
  } else if (imc < 40) {
    return TipoIMC.obesidade2;
  } else {
    return TipoIMC.obesidade3;
  }
}
