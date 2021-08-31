/**
 * Escribir un programa que acepte tres argumentos de tipo double:
 * y0, v0 y t. Imprimir el resultado de y0 + v0t - 1/2gt^2.
 * O sea la ecuación de desplazamiento para un tiro vertical
 * después de t segundos, con posición inicial y0 y velocidad inicial v0.
 *
 */
#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#define g 9.8

int main(int argc, char  *argv[]) {
double y0 = atoi(argv[1]);
double v0 = atoi(argv[2]);
double t = atoi(argv[3]);

printf("el objeto se desplazo %.2f m verticalmente\n", (y0+(v0*t)-(1/2*g*(t*t))) );


return 0 ;
}
