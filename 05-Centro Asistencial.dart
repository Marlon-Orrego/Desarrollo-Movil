import 'dart:io';

void main(List<String> args) {
  //Ingresando Cantidad de lisiados
  print("Ingrese la cantidad de lisiados de la semana: ");
  int lisiados = int.parse(stdin.readLineSync().toString());

  while (lisiados <= 0) {
    print("Valor Negativo No admitido como número de lisiados");

    print("Ingrese la cantidad de Lisiados de la semana: ");
    lisiados = int.parse(stdin.readLineSync().toString());
  }
  
  //Declarando Variables
  var hombreSoltero = 0;
  var hombresCasados = 0;
  var hombres = 0;
  var edadPromedio = 0;
  var personasSolteras = 0;
  var mujerSoltera = 0;

  for (int i = 0; i < lisiados; i++) {
    var sexo = 0;
    var edad = 0;
    var estCivil = 0;
    //Ingresando Sexo
    print("Ingrese el sexo del Lisiado ${i + 1}: 1. Hombre  2. Mujer");
    sexo = int.parse(stdin.readLineSync().toString());

    while (sexo != 1 && sexo != 2) {
      print("Ingrese los datos Validos");
      print("Ingrese el sexo del Lisiado ${i + 1}: 1. Hombre  2. Mujer");
      sexo = int.parse(stdin.readLineSync().toString());
    }
    if (sexo == 1) {
      hombres++;
    }
    //Ingresando Estado Civil
    print(
        "Ingrese el estado civil del Lisiado # ${i + 1}: 1. Soltero  2. Casado 3. Viudo");

    estCivil = int.parse(stdin.readLineSync().toString());
    
    while (3 < estCivil || estCivil <= 0) {
      print("Ingrese los datos Validos");
      print("Ingrese el estado civil del Lisiado # ${i + 1}: 1. Soltero  2. Casado 3. Viudo");

      estCivil = int.parse(stdin.readLineSync().toString());
    }

    if (estCivil == 1 && sexo == 2) {
      mujerSoltera++;
    }
    if (estCivil == 1) {
      personasSolteras++;
    }

    if (estCivil == 1 && sexo == 1) {
      hombreSoltero++;
    }

    //Edad
    print("ingrese la edad del Lisiado ${i + 1}: ");
    edad = int.parse(stdin.readLineSync().toString());

    if (sexo == 1 && estCivil == 2) {
      edadPromedio += edad;
      hombresCasados++;
    }
  }
  var calcProm = ((hombreSoltero * 100) / hombres);
  print("El porcentaje de los hombres solteros es de: $calcProm");

  var calcEdad = edadPromedio / hombresCasados;
  print("La edad promedio de los hombres casados es de: $calcEdad");

  var calcMujeresSolteras = ((mujerSoltera * 100) / personasSolteras);
  print(
      "El porcentaje de mujeres solteras frente a las personas solteras es de: $calcMujeresSolteras");
}
