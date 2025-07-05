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
  print("selecione seus items, digitando de 1 a 3");
  print("itens disponíveis");
  print(itens);

  //  print("Os seus itens são $itens");

  String item = stdin.readLineSync()!;
  if (item == "1") {
    print("Item escolhido é machado");
  } else if (item == "2") {
    print("Item escolhido é faca");
  } else if (item == "3") {
    print("Item escolhido é espada");
  } else {
    print("Escolha um número de 1 a 3");
  }

  //Agora Irá começar a luta contra o lobisomem Pidão
  print(
      "Agora que você escolheu a sua arma, você irá lutar contra o Lobisomem Pidão");
  print("A LUTA SERA : $usuario X Lobisomem Pidão");
  print("Lobisomem Pidão --- Me vê uma pouquinho de cuscuz kkkk");
  
  while (vida > 0) {
    print(
        "Escreva 1 para dar cuscuz ao lobisomem pidão, ou 2 para negar o cuscuz");
    var cuscuz = stdin.readLineSync();
    if (cuscuz == "1") {
      print("Você deu cuscuz para o lobisomem pidão");
      vida = vida - 10;
    } else if (cuscuz == "2") {
      print("VOCÊ IRÁ JOGAR O DADO PARA VER SE IRÁ GANHAR DO LOBISOMEM PIDÃO");
      var d10 = Random().nextInt(10);
      print("O valor do dado de 1 a 10 foi de $d10");
      if (d10 < 5) {
        vida = vida - 10;
        print("sua vida esta com o saldo de $vida");
      } else if (d10 > 5) {
        print("Você ganhou do lobisomem Pidão");
        break;
      }
    }
  }
}
