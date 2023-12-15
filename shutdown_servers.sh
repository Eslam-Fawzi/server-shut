#!/bin/bash

# This script shutdown the servers and used when light cut off

echo "This script shutdown the servers and used when light cut off"
echo ""
read -r -p "Are you sure you want to shutdown servers?(y/n) " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
     #Server 1
        sshpass -p  1234 ssh "tiger@192.168.230.131" " sudo -S  shutdown now  " < ./pass
        echo ""
	echo "Done"
        
#        read -p "Press enter to continue"
        #Server 2
        sshpass -p  1234 ssh "tiger@192.168.230.132" " sudo -S  shutdown now  " < ./pass
        echo ""
        echo "Done"

        #Server 3
	sshpass -p  1234 ssh "tiger@192.168.230.128" " sudo -S  shutdown now  " < ./pass
        echo ""
        echo "Done"
	sudo -S  shutdown now  < ./pass
else
      echo "Exiting script"

fi
