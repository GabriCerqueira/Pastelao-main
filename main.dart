import 'dart:async';
import 'dart:io';
import 'dart:math';

void main() {
  print("Diga seu nome meu nobre");
  String? usuario = stdin.readLineSync()!;
  print(" o seu nome é : $usuario");
  var item1 = "machado";
  var item2 = "faca";
  var item3 = "espada";
  var itens = [item1, item2, item3];
  var vida = 100;
  var nomeMonstro = "Bisteca Mágica";
  print("selecione seus items, digitando de 1 a 3");
  print("itens disponíveis");
  print(itens);

  //  print("Os seus itens são $itens");

  String item = stdin.readLineSync()!;
  if (item == "1") {
    format(formatacao: "$item1");
  } else if (item == "2") {
    format(formatacao: "$item2");
  } else if (item == "3") {
    format(formatacao: "$item3");
  } else {
    print("Escolha um número de 1 a 3");
  }

  //Agora Irá começar a luta contra o lobisomem Pidão
  print(
      "Agora que você escolheu a sua arma, você irá lutar contra o $nomeMonstro");
  print("A LUTA SERA : $usuario X $nomeMonstro");
  print("$nomeMonstro --- Me vê uma pouquinho de cuscuz kkkk");
  luta(nomeMonstro: "Bisteca Mágica", vidaa: 100);
  
}

void format({String? formatacao}) {
  print("O item escolhido é $formatacao");
}

void luta({String? nomeMonstro, int? vidaa}) {
  int? vida = vidaa;
  while (vida! > 0) {
    print("Escreva 1 para fugir do $nomeMonstro , ou 2 para lutar com o $nomeMonstro ");
    var lutar = stdin.readLineSync();
    if (lutar == "1") {
      print("Você fugiu do $nomeMonstro");
      break;
    } else if (lutar == "2") {
      print("VOCÊ IRÁ JOGAR O DADO PARA VER SE IRÁ GANHAR DO $nomeMonstro");
      var d10 = Random().nextInt(10);
      print("O valor do dado de 1 a 10 foi de $d10");
      if (d10 < 5) {
        vida = vida - 10;
        print("sua vida esta com o saldo de $vida");
      } else if (d10 > 5) {
        print("Você ganhou do $nomeMonstro");
        break;
      }
    }
  }
}
