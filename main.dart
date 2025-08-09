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
    "Esse RPG se passa na cidade de São Paulo, portanto você deve escolher em qual zona da cidade deseja iniciar sua aventura \n ",
    35,
  );
  personagemSimples["zonaescolhida"] = zonaSaoPaulo();

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
} 