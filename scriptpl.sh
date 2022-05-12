cd
sudo apt-get update

sudo apt-get upgrade -y

sudo apt install git -y

apt install unzip

mkdir /data1
mount /dev/md2 /data1

mkdir /data1/temp
mkdir /data1/plot

cd
wget https://downloads.rclone.org/v1.57.0/rclone-v1.57.0-linux-amd64.deb
sudo dpkg -i rclone-v1.57.0-linux-amd64.deb

wget https://raw.githubusercontent.com/fatih1086kaya/rclone/main/rclone-v1.57.0-iva01-linux-amd64.zip
unzip rclone-v1.57.0-iva01-linux-amd64.zip

mv rclone-v1.57.0-iva01-linux-amd64 AutoRclone
rm -r rclone-v1.57.0-iva01-linux-amd64.zip

cd AutoRclone

sudo mv rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/

sudo apt-get install -y man-db

sudo mandb


rclone config

cd


wget https://raw.githubusercontent.com/fatih1086kaya/miama/main/12.05.2022accounts.zip

unzip 12.05.2022accounts.zip
rm -r 12.05.2022accounts.zip

apt install gawk

cd 1

find *.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %03d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %02d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %01d.json\n", $0,  a++ }' |
 
bash

echo "******"

cd 2

find *.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %03d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %02d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %01d.json\n", $0,  a++ }' |
 
bash

echo "******"

cd 3

find *.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %03d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %02d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %01d.json\n", $0,  a++ }' |
 
bash

echo "******"

cd 4

find *.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %03d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %02d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %01d.json\n", $0,  a++ }' |
 
bash

echo "******"

cd 5

find *.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %03d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %02d.json\n", $0,  a++ }' |
 
bash

find 0*.json |
 
gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %01d.json\n", $0,  a++ }' |
 
bash

echo "******"

cd

sudo apt install -y libsodium-dev cmake g++ git build-essential

sudo apt-get install build-essential cmake

mkdir madmax
cd madmax
git clone https://github.com/madMAx43v3r/chia-plotter.git

cd chia-plotter


git submodule update --init
./make_devel.sh

cd build



