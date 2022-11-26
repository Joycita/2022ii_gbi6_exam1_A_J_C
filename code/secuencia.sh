## Datos de secuencia 
## Cuente la cantidad de registros de cada tipo de péptido [secuence] y guarde el resultado en amp.txt
cd ../data/

tail -n +2 grampa.csv | cut -d "," -f 4 | uniq -c | sort -n

## Calcule la longitud de los péptidos que tienen el dominio “WGS” y guarde los registros y su conteo en el “wgs.csv”
cd ../data/


PeptidosconeldominioWGS=`tail -n +1 grampa.csv | cut -d "," -f 4 | grep WGS | uniq`

for z in $PeptidosconeldominioWGS 
do
  LongituddelosPeptidos=`echo ${#z} | sort -n`
  echo  "Longitud:" $LongituddelosPeptidos "Peptido" $z
done


##Envíe los cambios al repositorio principal con la leyenda “Apellido Nombre ha determinado los péptidos con dominio WGS”.



