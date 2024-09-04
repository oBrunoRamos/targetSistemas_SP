
import 'dart:io';

main(){

  print("Digite uma palavra: ");
  String? console = stdin.readLineSync();
  var novaPalavra = "";

  if(console != null){
    for(int i = console.length-1; i >= 0 ; i--){
      novaPalavra = novaPalavra + console[i];
    }
    print(novaPalavra);
  }
}