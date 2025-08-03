import 'dart:math';
import 'dart:io';

void main() {
  var monstroAserEscolhido = escolherItem();

  switch (monstroAserEscolhido) {
    case "Arco e Flecha":
      print("O monstro a ser combatido é o Dois caras numa moto");
    case "Cajado do Vazio":
      print("O monstro a ser combatido é o CLT de Ressaca ");
    case "Espada Vorpal":
      print("O monstro a ser combatido é o Bêbado do Centro");
  }
}

String escolherItem() {
  String item = stdin.readLineSync()!;
  switch (item) {
    case "1":
      return item = "Arco e Flecha";
    case "2":
      return item = "Cajado do Vazio";
    case "3":
      return item = "Espada Vorpal";
    default:
      print("Digite o número de 1 a 3 papae");
      escolherItem();
  }
  return item;
}
