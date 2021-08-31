1_fechas: 1_fechas.c
	@gcc -o 1_fechas 1_fechas.c

2_tiro_vertical: 2_tiro_vertical.c
	@gcc -o 2_tiro_vertical 2_tiro_vertical.c

3_iguales: 3_iguales.c
	@gcc -o 3_iguales 3_iguales.c

4_al_reves: 4_al_reves.c
	@gcc -o 4_al_reves 4_al_reves.c

clean:
	rm 1_fechas 2_tiro_vertical 3_iguales 4_al_reves

test: 1_fechas 2_tiro_vertical 3_iguales 4_al_reves
	@bash tests.sh
