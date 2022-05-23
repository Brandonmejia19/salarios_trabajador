import 'dart:io';

void main(List<String> args) {
  /**
    * Crear programa en dart que calcule el salario de un trabajador
   En base a lo siguiente:
   Solicitar la horas trabajadas y el pago por hora.
   Solicitar el nombre del trabajador 
   Solcitar el tipo de trabajador. Si el trabajador es tipo A se le aplicara un descuento del 5% al salario.
   Si el trabajador es tipo B, se le aplicara un descuento del 10%
   Si el trabajador es tipo C, se le aplicara un descuento de 15%
   Si el trabajador es tipo D, no se le aplicara un descuento
   */
  double total = 0;
  double descuento = 0;

  print('Dijite el nombre del trabajador:');
  var nombres = stdin.readLineSync();

  print('Digite las horas trabajadas: ');
  var ht = stdin.readLineSync();

  print('Digite le pago pr hora');
  var ph = stdin.readLineSync();

  print('Digite el tipo de trabajador');
  var tipo = stdin.readLineSync();

  double horas = double.parse('$ht');
  double pagohoras = double.parse('$ph');

  double salario = horas * pagohoras;

  if (tipo == 'A' || tipo == 'a') {
    descuento = salario * 0.05;
    total = salario - descuento;
  } else if (tipo == 'B' || tipo == 'b') {
    descuento = salario * 0.1;
    total = salario - descuento;
  } else if (tipo == 'C' || tipo == 'c') {
    descuento = salario * 0.15;
    total = salario - descuento;
  } else if (tipo == 'D' || tipo == 'd') {
    total = salario;
  } else {
    print('El tipo de trabajador es incorrecto!!!');
  }
  print('El nonmbre del trabjador es: $nombres');
  print('El salario del trabajador es: $total');
}
