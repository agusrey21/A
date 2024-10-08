#agregando usuarios y grupos
sudo useradd developer1
sudo useradd tester1
sudo useradd devops1
sudo useradd devops2
cat /etc/passwd |tail
sudo grupadd grupodeveloper
sudo grupadd grupodevops
sudo grupadd grupoteste

#asignando

sudo usermod -aG grupodeveloper developer1
sudo usermod -aG grupodevops developer1
sudo usermod -aG grupodevops devops1
sudo usermod -aG grupodevops devops2
sudo usermod -aG grupodeveloper devops2 
sudo usermod -aG grupotester tester1

#asigno los usuarios y grupos
sudo chown developer1:grupodevops /Examenes-UTN/alumno_1
sudo chown tester1:grupotesters /Examenes-UTN/alumno_2
sudo chown tester1:grupoteste /Examenes-UTN/alumno_2
sudo chown tester1:grupotester /Examenes-UTN/alumno_2
sudo chown devops1:grupodevops /Examenes-UTN/alumno_3
sudo chown devops2:grupodevops /Examenes-UTN/profesor/
#doy los permisos correspondientes
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesor/

#salida de comando whoami
whoami > /Examenes-UTN/alumno_1/validar.txt
whoami > /Examenes-UTN/alumno_2/validar.txt
whoami > /Examenes-UTN/alumno_3/validar.txt
whoami > /Examenes-UTN/profesor/validar.txt

