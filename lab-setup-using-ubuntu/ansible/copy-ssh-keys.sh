#ssh-keygen command
#==================
#-b Specifies the key size
#-t key_type [Specifies the algorithm used for key generation. Possible values are "rsa", "dsa", and "ecdsa". The default is "rsa".]
#-f specifies the filename of the key file.
#-N passphase [Here empty]

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

for user in ruby root
do
  for server in server_1 server_2
  do
    sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${server}
  done
done
