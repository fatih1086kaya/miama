index=1
deneme=0
while :
do
deneme=$(($deneme + 1))
echo -e "\e[3;31m Deneme: $deneme \e[0m"
echo ""
sayi=0
sayi=($(ls /data1/plot/ | wc -l))
echo -e "\e[3;36m Plot Sayisi: $sayi \e[0m"
echo -e "\e[3;36m Service Account: $index \e[0m"
echo " "
if [[ $sayi -gt 0 ]]; then
index=$index
if [[ $index -gt 100 ]]; then
index=1
fi
echo -e "\e[3;32m Plot Transferi Baslatiliyor ... \e[0m"
rclone backend set 7: -o service_account_file="/root/7/$index.json"
echo -e "\e[1;33m Rclone Backend Degisti \n \e[0m"
rclone copy 4:yedek1 7:yedek1 --drive-chunk-size 1024M --no-traverse --checkers 3 --tpslimit 3 --transfers 3 --fast-list --drive-server-side-across-configs --ignore-existing -P;
index=$(($index + 1))
echo -e "\e[3;32m Program Döngüsü Bitti ... \e[0m"
echo "********************************************************"
sleep 5
fi
sleep 100
done