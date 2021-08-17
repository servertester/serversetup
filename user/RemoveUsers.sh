echo "enter username to delete"
read username

read -p "are you sure you want to remove ${username}? (y/n)" choice
case "$choice" in
	y|Y ) echo "removing user directory"
	       rm -r ../../../${username}
	      echo "removing user"
	      userdel $username;;
	      	      
	n|N ) echo "cancelled";;
	* ) echo "press yes or no";
esac
