import 'dart:math';
import 'dart:io';

void main() {
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
    },];
    var testedasilva = monstrosZonaLeste[0]["Habilidades"];
    print(testedasilva);
    
}
