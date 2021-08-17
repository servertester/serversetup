echo "enter username"
read username
clear
echo "enter password"
read password
clear
echo "enter groupname"
read groupname
groupadd $groupname
useradd -m -g $groupname $username
usermod --password $(echo ${password} | openssl passwd -1 -stdin) ${username} 
