#!/bin/bash
sleep 0

#ps -aux
while true
do 

sleep 2
if test $( ps -a|grep serial|wc -l) -eq 0
#yi jian ce chuan kou hao zuo wei jian ce jie guo 
then
echo 'no'
gnome-terminal --window -e 'bash -c "cd /home/tdt4/616;
echo "ubuntu" |sudo -S rmmod uvcvideo;
echo "ubuntu" |sudo -S modprobe uvcvideo quirks=128;echo "ubuntu" |sudo -S chmod 777 /dev/ttyUSB0;
 ./serial"'
else
echo 'yes'
fi

done
exit 0
