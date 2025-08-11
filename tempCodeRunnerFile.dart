import 'dart:math';
import 'dart:io';
import 'dart:core';

void main() {
  luta(vida: 100, itemESCOLHIDO: itemNome, chefoes: 10);
}
  
var chefoes = <Map<String, dynamic>>[
  {
    "nome": "Caveira de Chamas",
    "vida": 10,
    "Habilidades": [
      {"Primaria": "Bola de Chamas", "Secundária": "Rajada de Chamas"},
    ],
  },
  {
    "nome": "Golem de Ferro",
    "vida": 20,
    "Habilidades": [
      {"Primaria": "Soco Biônico", "Secundaria": "Lançamento de oponente"},
    ],
  },
];
int vidaMonstro = chefoes[0]["vida"];
String habilidades = chefoes[0]["Habilidades"]?[0]["Primaria"];
var itens = <Map<String,dynamic>>[
  {"item": "canivete", "dano": 20},
];

var itemDano = itens[0]["dano"];
var itemNome = itens[0]["item"];

var personagemSimples = <String, dynamic>{
  "nomeUsuario": "Zezin",
  "vida": 100,
  "itemEscolhido": "Faca",
  "zonaescolhida": null,
};

luta({required var vida, required var itemESCOLHIDO, required int chefoes}) {
  vida = personagemSimples["vida"];
  print("1 - lutar, 2 - fugir");
  var escolha = stdin.readLineSync();
  var dado = Random().nextInt(10);
  switch (escolha) {
    case "1":
      var resultado = vidaMonstro - itemDano;
      print("VocÊ irá atacar com a sua arma, $itemNome");
      print(resultado);

    case "2":
      print("Dado será rolado para ver se você irá conseguir fugir");
      if (dado < 5) {
        vida = vida - 10;
      } else {
        print("Você conseguiu fugir");
      }
  }
}
