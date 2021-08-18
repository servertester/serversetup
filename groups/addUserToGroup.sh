echo "enter username"
read username

echo "enter groupname"
read groupname

usermod -a -G ${groupname} ${username}
