/**
 * Escribir un programa que acepte como argumento un número entero
 * e imprima el número con los digitos al revés.
 * Por ejemplo para la entrada 12345 debe imprimir 54321.
 *
 */
#include <stdlib.h>
#include <stdio.h>
int main(int argc, char  *argv[]) {
int a= atoi(argv[1]);
while(a!=0){
  printf("(%d)\n", a%10 );
  a/=10;
}
printf("\n");
return 0;
}
