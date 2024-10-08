cat << EOF |tee $FILTROAVANZADO.txt
Mi IP Publica es: $(curl -s ifconfig.me)
Mi Usuario es: $(whoami)
El Hash de mi Usuario es: $(sudo cat /etc/shadow |grep vagrant |awk -F ':' '{print $2}')

EOF
