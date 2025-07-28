import 'dart:math';
import 'dart:io';

void main() {
  int? vida = 100;
  vida = luta(nomeMonstro: "TESTE", vida: vida);
  print(vida);
}

int? lutarMonstro({required String nomeMonstro, required int vida}) {
  print("VOCÊ IRÁ JOGAR O DADO PARA VER SE IRÁ GANHAR DO $nomeMonstro");
  var d10 = Random().nextInt(10);
  print("O valor do dado de 1 a 10 foi de $d10");
  if (d10 < 5) {
    vida = vida - 10;
    print("sua vida esta com o saldo de $vida");
    return vida;
  } else {
    print("Você ganhou do $nomeMonstro");
    return vida;
  }
}

int? luta({required nomeMonstro, required int vida}) {
  int? vida = 100;
  while (vida! > 0) {
    print(
      "Escreva 1 para fugir do $nomeMonstro , ou 2 para lutar com o $nomeMonstro ",
    );
    var lutar = stdin.readLineSync();
    if (lutar == "1") {
      var d10Luta = Random().nextInt(10);
      print(
        "Você irá ser capaz de fugir de acordo com o valor do dado, o valor do dado é $d10Luta",
      );
      if (d10Luta > 5) {
        print("Você conseguiu fugir do Monstro");
        break;
      } else {
        var resultado2 = lutarMonstro(nomeMonstro: nomeMonstro, vida: vida);
        if (resultado2 == -1) {
          break;
        } else {
          vida = resultado2;
        }
      }
    } else if (lutar == "2") {
      var resultado = lutarMonstro(nomeMonstro: nomeMonstro, vida: vida);
      if (resultado == -1) {
        break;
      } else {
        vida = resultado;
      }
    } else {
      print("Digite os Números 1 ou 2 ");
    }
    ; 
    return vida;
  }
}
