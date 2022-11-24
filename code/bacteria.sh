## Datos de bacteria 
bash ../data 
tail -n +2 grampa.csv | cut -f 2 | sort -n | uniq -c
