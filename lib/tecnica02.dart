import 'dart:io';

main() {
  print("Digite um número: ");

  String? console = stdin.readLineSync();
  String respostaConsole = "O numero digitado pertence a sequência de Fibonacci";

  double? numeroDigitado;

  if (console != null) {
    try {
      numeroDigitado = double.parse(console);
    } on FormatException catch (e) {
      print("O valor digitado não é um número");
    }
  }

  if (numeroDigitado != null) {
    if (numeroDigitado == 0) {
      print(respostaConsole);
    } else {
      int penultimoNaSequencia = 0;
      int ultimoNaSequencia = 1;

      while (true) {
        if (numeroDigitado == ultimoNaSequencia) {
          print(respostaConsole);
          break;
        } else if (numeroDigitado < ultimoNaSequencia) {
          print("O numero não pertence a sequencia de Fibonacci");
          break;
        } else {
          int soma = ultimoNaSequencia + penultimoNaSequencia;
          penultimoNaSequencia = ultimoNaSequencia;
          ultimoNaSequencia = soma;
        }
      }
    }
  }
}