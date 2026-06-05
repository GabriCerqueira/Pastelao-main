import 'dart:io';

import 'funcoes.dart';

void main() async {
  escreverDevagar(
    "Bem vindo ao RPG Da Silva, é um projeto pastelão de um aspirante a programador \n",
    35,
  );

  var personagemSimples = {
    "nomeUsuario": receberNome(),
    "vida": 100,
    "itemEscolhido": null,
    "zonaescolhida": null,
  };
  escreverDevagar(
    "Esse RPG se passa na cidade de São Paulo\n ",
    35,
  );
   escreverDevagar(
    "Você mora na zona Leste....\n ",
    35,
  );
     escreverDevagar(
    "Uma das zonas mais perigosas da cidade....\n ",
    45,
  );
//  personagemSimples["zonaescolhida"] = zonaSaoPaulo();

  var itens = ["Três oitão", "Canivete de Bolso", "Taser"];
  var usuario = personagemSimples["nomeUsuario"];
  var vida = personagemSimples["vida"];
  var zonaDaSilva = personagemSimples["zonaescolhida"];

  var monstro1Habilidade = monstrosZonaLeste[0]["Habilidades"];

  var monstro1 = monstrosZonaLeste[0]["nome"];
  var monstro2 = monstrosZonaLeste[1]["nome"];
  var monstro3 = monstrosZonaLeste[2]["nome"];
  escreverDevagar("selecione seus items, digitando de 1 a 3 \n", 35);
  escreverDevagar("itens disponíveis \n", 35);
  escreverDevagar("$itens \n", 35);

  //  print("Os seus itens são $itens");
  personagemSimples["itemEscolhido"] = escolherItem();

  escreverDevagar(
    "O seu dia começa como o  dia de todo bom CLT, você acorda as 5 da manhã pra ir trabalhar"
    "\n",
    35,
  );
  escreverDevagar(
    "Você se arruma, toma seu café da manhã e sai da sua casa para pegar o ônibus com direção a estação de trem"
    "\n",
    35,
  );
  escreverDevagar(
    "Você tem duas opções...\n",
    35,
  );

  caminhoEscolhido();

  /**


  //Agora Irá começar a luta contra o Monstro
  escreverDevagar(
    "A LUTA SERA : $usuario X $monstro2"
    "\n",
    35,
  );
  personagemSimples["vida"] = luta(nomeMonstro: monstro2, vida: vida);

  escreverDevagar(
    "A LUTA SERA : $usuario X $monstro1"
    "\n",
    35,
  );
  personagemSimples["vida"] = luta(nomeMonstro: monstro1, vida: vida);

  escreverDevagar(
    "A LUTA SERA : $usuario X $monstro3"
    "\n",
    35,
  );
  personagemSimples["vida"] = luta(nomeMonstro: monstro3, vida: vida);

  print(personagemSimples["vida"]);
   */
}
