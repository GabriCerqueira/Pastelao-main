import 'dart:io';
import 'dart:math';

void main() {}
var itens = ["Três oitão", "Canivete de Bolso", "Taser"];
void formatarTexto({String? formatacao}) {
  print("O item escolhido é $formatacao");
}

int? lutarMonstro({required String nomeMonstro, required var vida}) {
  print("VOCÊ IRÁ JOGAR O DADO PARA VER SE IRÁ GANHAR DO $nomeMonstro");
  ;
  var d10 = Random().nextInt(10);
  print("O valor do dado de 1 a 10 foi de $d10");
  if (d10 < 5) {
    vida = vida - 10;
    print(
      "O monstro usou sua habilidade de sua vida esta com o saldo de $vida",
    );
    return vida;
  } else {
    print("Você ganhou do $nomeMonstro");
    return -1;
  }
}

int? luta({required nomeMonstro, required var vida}) {
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
  }
  return vida;
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
      formatarTexto(formatacao: "Três Oitao");
      return item = "Três Oitão";
    case "2":
      formatarTexto(formatacao: "Canivete de Bolso");
      return item = "Canivete de Bolso";
    case "3":
      formatarTexto(formatacao: "Taser");
      return item = "Taser";
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

String? zonaSaoPaulo() {
  escreverDevagar("As zonas disponíveis são: \n", 35);
  print("Zona Sul (Dificuldade : Médio)");
  print("Zona Norte(Dificuldade :Normal )");
  print("Zona Leste(Dificuldade : Hard)");
  print("Zona Oeste(Dificuldade : Easy )");
  print("Centro da Cidade( Dificuldade : Ultra Hard)");
  var escolha = stdin.readLineSync().toString();
  escolha.toUpperCase();
  switch (escolha) {
    case "zona sul":
      escreverDevagar("O início foi determinado na Zona Sul \n ", 25);
      return "Zona Sul";
    case "zona norte":
      escreverDevagar("O início foi determinado na Zona Norte \n ", 25);
      return "Zona Norte";
    case "zona leste":
      escreverDevagar("O início foi determinado para a Zona Leste \n ", 25);
      return "Zona Leste";
    case "zona oeste":
      escreverDevagar("O início foi determinado para a Zona Oeste \n ", 25);
      return "Zona Oeste";
    case "centro da cidade":
      escreverDevagar(
        "O início foi determinado para o Centro da Cidade \n ",
        25,
      );
      return "Centro da Cidade";
    default:
      print("Escreva o nome da zona que quer iniciar a sua jornada \n ");
      zonaSaoPaulo();
  }
  ;
}

var monstrosZonaLeste = [
  {
    "nome": "Dois caras numa moto",
    "vida": 10,
    "Habilidades": [
      {"Primaria": "Três tiros", "Secundária": "Paulada"},
    ],
  },
  {
    "nome": "Bêbado do Centro",
    "vida": "20",
    "Habilidades": [
      {"Primaria": "Facada", "Secundaria": "Lançamento de cocô"},
    ],
  },
  {
    "nome": "CLT de Ressaca",
    "vida": "5",
    "Habilidades": [
      {
        "Primaria": "Joga a culpa em você",
        "Secundaria": "Derrama café quente você",
      },
    ],
  },
];
var habilidadeMonstros = monstrosZonaLeste[0]["Habilidades"];

int? itemLuta(int valorDado) {
  var item = null;
  switch (item) {
    case "Três oitão":
      var resultado = valorDado + 3;
      return resultado;
    case "Canivete de Bolso":    
      var resultado = valorDado + 1;
      return resultado;
    case "Taser":
      var resultado = valorDado + 2;
      return resultado;
  }
}





