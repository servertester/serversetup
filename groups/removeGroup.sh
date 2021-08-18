echo "enter groupname to delete"

read groupname

read -p "are you sure you want to remove ${groupname}? (y/n)" choice

case "$choice" in
	y|Y ) echo "removing group"
		groupdel ${groupname};;
	
	n|N ) echo "cancelled";;
	* )echo "press yes or no";

esac
