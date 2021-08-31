/**
 * Escribir un programa que acepte dos argumentos: día y mes
 * (ambos de tipo int).
 * Imprimir "verdadero" si la fecha está entre el 20 de marzo
 * y el 20 de junio, o "falso" de lo contrario.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
int main(int argc, char *argv[]) {
  int dia = atoi (argv[1]);
  int mes = atoi (argv[2]);
if (dia < 20 && mes == 3)  {
printf("falso\n");
return 1;
}

if (dia > 20 && mes == 6) {
  printf("falso\n");
return 1;
}


 printf("%s\n",( mes >=3 && mes <=6 && dia <=31 ? "verdadero":"falso"));



  return 0;
}
