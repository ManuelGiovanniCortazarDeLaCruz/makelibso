echo
"holaprintlibrary.o: holaprintlibrary.c"
echo "gcc -c holaprintlibrary. -o holaprintlibrary.o"
gcc -c holaprintlibrary.c -o holaprintlibrary.o
echo "libprintlibrary.so: holaprintlibrary.o"
echo "gcc -shared holaprintlibrary.o -o libholaprintlibrary.so"
gcc -shared holaprintlibrary.o -o libholaprintlibrary.so
echo "holaSOexe: holamainlibrary.o"
echo "gcc -L/home/usuario/so210/makeso/makelibso/ -Wall -o holaSOexe holamainlibrary. -holaprintlibrary"
# gcc -L/home/usuario/so21o/makeso/makelibso/ -Wall -o holaSOexe holamainlibrary. -holaprintlibrary
gcc -L/home/giozar/school/os/C_Programs/makelibso -Wall -o holaSOexe holamainlibrary.c -lholaprintlibrary
echo "to clean: rm holamainlibrary.o holaprintlibrary.o libholaprintlibrary.so holaSOexe"
echo "LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH"
# LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/home/giozar/school/os/C_Programs/makelibso/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

echo "Ejecucion con carga de la shared object"
./holaSOexe
