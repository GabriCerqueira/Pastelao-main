import 'dart:math';
import 'dart:io';
import 'dart:core';
import 'dart:vmservice_io';

void main() {
  luta(vida: 100, itemESCOLHIDO: itemNome, chefoes: 10);
}

var chefoes = <Map<String, dynamic>>[
  {
    "nome": "Bêbado do Centro",
    "vida": 10,
    "Habilidades": [
      {"Primaria": "Crack da Silva", "Secundária": "Pedrada"},
    ],
  },
  {
    "nome": "Dois Caras Numa Moto",
    "vida": 20,
    "Habilidades": [
      {"Primaria": "Três Tiros", "Secundaria": "Facada"},
    ],
  },
];
int vidaMonstro = chefoes[0]["vida"];
String habilidades = chefoes[0]["Habilidades"]?[0]["Primaria"];
var itens = <Map<String, dynamic>>[
  {"item": 10, "dano": 20}, // erro do código está aqui, pelo visto estou puxando o value da key item, isso esta incorreto pois devo puxar uma int que será o dano do item e não seu nome
];

int itemDano = itens[0]["dano"];
var itemNome = itens[0]["item"];

var personagemSimples = <String, dynamic>{
  "nomeUsuario": "Zezin",
  "vida": 100,
  "itemEscolhido": "Faca",
  "zonaescolhida": null,
};

int? luta({
  required var vida,
  required var itemESCOLHIDO,
  required int chefoes,
}) {
  print("1 - lutar, 2 - fugir");
  var escolha = stdin.readLineSync();
  switch(escolha){
  case "1":
    VidaMonstroAlteradaLuta(itemESCOLHIDO,chefoes);
  
  case "2":
    vidaPlayerAlteradaLuta(vida);
  default : luta(vida: 100, itemESCOLHIDO: itemESCOLHIDO, chefoes: chefoes);
  }
  
  return null;
}

int VidaMonstroAlteradaLuta(int itemDano, int vidaMonstro){
  var resultado = vidaMonstro - itemDano;
  print("VocÊ irá atacar com a sua arma, $itemNome");
  print(resultado);
  return resultado;
}

String? vidaPlayerAlteradaLuta(var vida) {
  var vida = personagemSimples["vida"];
  var dado = Random().nextInt(10);
  print("Dado será rolado para ver se você irá conseguir fugir");
  if (dado < 5) {
    print(" o valor do dado foi $dado");
    vida = vida - 10;
    print(vida);
    return personagemSimples["vida"] = vida.toString();

  } else if (dado > 5) {
    print("Você conseguiu fugir");
  }
  return null;
}
