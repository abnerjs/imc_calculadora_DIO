import 'dart:convert';
import 'dart:io';

double readDouble(String label, String msgError) {
  print(label);
  var input = double.tryParse(stdin.readLineSync(encoding: utf8) ?? "");

  if (input == null) {
    print(msgError);
    input = readDouble(label, msgError);

    return input;
  }

  return input;
}

String readString(String label, String msgError) {
  print(label);
  var input = stdin.readLineSync(encoding: utf8)?.trim() ?? "";

  if (input.isEmpty) {
    print(msgError);
    input = readString(label, msgError);

    return input;
  }

  return input;
}
