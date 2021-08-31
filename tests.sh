#!/bin/bash

# colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
# contador
tests_passed=0
# funciones
test_output() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 => $2 ${GREEN}✔️${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: Esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
  fi
}
# ejercicio 1
echo "------- Ejercicio 1 -------"
# test 1.1
test_output "./1_fechas 4 5" "verdadero"
# test 1.2
test_output "./1_fechas 19 3" "falso"
# test 1.3
test_output "./1_fechas 20 6" "verdadero"
# test 1.4
test_output "./1_fechas 1 1" "falso"
# test 1.5
test_output "./1_fechas 21 6" "falso"
# ejercicio 2
echo "------- Ejercicio 2 -------"
# test 2.1
test_output "./2_tiro_vertical 1 5 1" "1.10"
# test 2.2
test_output "./2_tiro_vertical 0 10 0.5" "3.77"
# test 2.3
test_output "./2_tiro_vertical 0 30 1.5" "33.98"
# test 2.4
test_output "./2_tiro_vertical 50 2.5 3" "13.40"
# test 2.5
test_output "./2_tiro_vertical 20 8.5 3" "1.40"
# ejercicio 3
echo "------- Ejercicio 3 -------"
# test 3.1
test_output "./3_iguales 3 3 3" "iguales"
# test 3.2
test_output "./3_iguales 3 1 3" "no iguales"
# test 3.3
test_output "./3_iguales 2 1 3" "no iguales"
# test 3.4
test_output "./3_iguales 1 2 3" "no iguales"
# test 3.5
test_output "./3_iguales 0 0 0" "iguales"
# ejercicio 4
echo "------- Ejercicio 4 -------"
# test 4.1
test_output "./4_al_reves 54321" "12345"
# test 4.2
test_output "./4_al_reves 1234" "4321"
# test 4.3
test_output "./4_al_reves 123456789" "987654321"
# test 4.4
test_output "./4_al_reves 12321" "12321"
# test 4.5
test_output "./4_al_reves 1111" "1111"
echo "-------  Resultado  -------"
# resultado final
if [[ $tests_passed -eq 20 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/20 tests OK."
fi
exit 0
