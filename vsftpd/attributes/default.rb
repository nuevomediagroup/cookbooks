# vsftpd config
default[:vsftpd2][:user] = 'nuestratv'
default[:vsftpd2][:pwd_hash] = '$1$v0TO4rta$CCykv1XLsg5CLW0eVUdYj1'
# pwd_hash is created by echo "theplaintextpassword" | makepasswd --clearfrom=- --crypt-md5 |awk '{ print $2 }'
