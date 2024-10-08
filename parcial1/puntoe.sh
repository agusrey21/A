#busco en /proc la memoria total y la sobreescribo en filtro_basico

cat /proc/meminfo |grep MemTotal > filtro_basico.txt
cat filtro_basico.txt

#agrego un texto 
echo 'Chassis Information' >> filtro_basico.txt

#envio al final del archivo la informacion del fabricante del chassis
sudo dmidecode -t chassis |grep Manufacturer >> filtro_basico.txt
cat filtro_basico.txt
