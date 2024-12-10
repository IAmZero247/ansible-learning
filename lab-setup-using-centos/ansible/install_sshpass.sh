#install sshpass

tar zxvf sshpass-1.10.tar.gz
cd sshpass-1.10
./configure
make
sudo make install
cd ..
rm -rf  sshpass-1.10


