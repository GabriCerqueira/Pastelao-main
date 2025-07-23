import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';

void main() async {
  var usuario = receberNome();

  escreverDevagar(
      "Bem vindo ao RPG Da Silva, é um projeto pastelão de um aspirante a programador \n",
      35);
  var item1 = "machado";
  var item2 = "faca";
  var item3 = "espada";
  var itens = [item1, item2, item3];
  var vida = 100;
  var monstro1 = "Bisteca Mágica";
  var monstro2 = "Lobisomem Pidão";
  var monstro3 = "Rato Ovudo";
  escreverDevagar("selecione seus items, digitando de 1 a 3 \n", 35);
  escreverDevagar("itens disponíveis \n", 35);
  escreverDevagar("Machado, Faca, Espada \n", 35);

  //  print("Os seus itens são $itens");
  String item = escolherItem();

  //Agora Irá começar a luta contra o Monstro

  escreverDevagar(
      "Agora que você escolheu a sua arma, você irá lutar contra o $monstro1"
      "\n",
      35);
  escreverDevagar("A LUTA SERA : $usuario X $monstro1" "\n", 35);
  escreverDevagar("$monstro1 --- Você será bistecado kkkk " "\n", 35);
  luta(nomeMonstro: monstro1, vidaa: 100);
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

String receberNome() {
  print("Diga seu nome");
  var usuario = stdin.readLineSync().toString();
  if (usuario.isEmpty) {
    return receberNome();
  }
  var nomezinSimNao = confirmacao(usuario);
  if (!nomezinSimNao) {
    return receberNome();
  }
  return usuario;
}

String escolherItem() {
  String item = stdin.readLineSync()!;
  switch (item) {
    case "1":
      formatarTexto(formatacao: "machado");
      return item = "Machado";
    case "2":
      formatarTexto(formatacao: "Faca");
      return item = "Faca";
    case "3":
      formatarTexto(formatacao: "Espada");
      return item = "Espada";
    default:
      print("Digite o número de 1 a 3 papae");
      escolherItem();
  }
  return item;
}

void escreverDevagar(String texto, int tempoDelay) {
  for (int i = 0; i < texto.length; i++) {
    stdout.write(texto[i]);
    sleep(Duration(milliseconds: tempoDelay));
  }
}

bool confirmacao(String usuario) {
  bool? confirmation;

  while (confirmation == null) {
    print("Você está de acordo com o nome escolhido (S/N)? $usuario");

    var simNao = stdin.readLineSync()?.toUpperCase();

    switch (simNao) {
      case "S":
        confirmation = true;
        break;
      case "N":
        confirmation = false;
        break;
      default:
        print("Escolha alguma das opções abaixo");
    }
  }
  return confirmation;
}
