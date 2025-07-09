import 'dart:async';
import 'dart:developer';
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
    formatarTexto(formatacao: "$item1");
  } else if (item == "2") {
    formatarTexto(formatacao: "$item2");
  } else if (item == "3") {
    formatarTexto(formatacao: "$item3");
  } else {
    print("Escolha um número de 1 a 3");
  }

  //Agora Irá começar a luta contra o Monstro

  print(
      "Agora que você escolheu a sua arma, você irá lutar contra o $nomeMonstro");
  print("A LUTA SERA : $usuario X $nomeMonstro");
  print("$nomeMonstro --- Me vê uma pouquinho de cuscuz kkkk");
  luta(nomeMonstro: "Bisteca Mágica", vidaa: 100);
}

void formatarTexto({String? formatacao}) {
  print("O item escolhido é $formatacao");
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
    return -1;
  }
}

void luta({required nomeMonstro, required int vidaa}) {
  int? vida = vidaa;
  while (vida! > 0) {
    print(
        "Escreva 1 para fugir do $nomeMonstro , ou 2 para lutar com o $nomeMonstro ");
    var lutar = stdin.readLineSync();
    if (lutar == "1") {
      var d10Luta = Random().nextInt(10);
      print(
          "Você irá ser capaz de fugir de acordo com o valor do dado, o valor do dado é $d10Luta");
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
  }
}
