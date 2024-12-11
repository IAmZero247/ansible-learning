#ssh-keygen command
#==================
#-b Specifies the key size
#-t key_type [Specifies the algorithm used for key generation. Possible values are "rsa", "dsa", and "ecdsa". The default is "rsa".]
#-f specifies the filename of the key file.
#-N passphase [Here empty]

ssh-keygen  -t rsa -b 2048 -f ~/.ssh/id_rsa -N "" 



echo "Executing ssh-copy-id"

for user in  root
do
  for server in server_1 server_2 
  do
    sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${server}
  done
done

echo "Executing Uname"

for user in  root
do
  for server in server_1 server_2
  do
    sshpass -f password.tx ssh ${user}@${server} uname -a
  done
done




