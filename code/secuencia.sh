## Datos de secuencia 
## Cuente la cantidad de registros de cada tipo de péptido [secuence] y guarde el resultado en amp.txt 

cat ../data/grampa.csv  | cut -d "," -f 3| tail -n +2 | sort | uniq -c>../data/amp.txt 


