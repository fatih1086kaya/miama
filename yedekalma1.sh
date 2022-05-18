index=1
deneme=0
while :
do
deneme=$(($deneme + 1))
echo -e "\e[3;31m Deneme: $deneme \e[0m"
echo ""
sayi=10
echo -e "\e[3;36m Plot Sayisi: $sayi \e[0m"
echo -e "\e[3;36m Service Account: $index \e[0m"
echo " "
if [[ $sayi -gt 0 ]]; then
index=$index
if [[ $index -gt 100 ]]; then
break
fi
echo -e "\e[3;32m Plot Transferi Baslatiliyor ... \e[0m"
rclone backend set 1: -o service_account_file="/root/1/$index.json"
rclone backend set 4: -o service_account_file="/root/4/$index.json"
echo -e "\e[1;33m Rclone Backend Degisti \n \e[0m"
rclone copy 1:temp1/ 4:yedek1/ --max-transfer 506G  --drive-chunk-size 1024M --no-traverse --checkers 30 --tpslimit 30 --transfers 1 --fast-list --drive-server-side-across-configs --ignore-existing -P ;
index=$(($index + 1))
echo -e "\e[3;32m Program Döngüsü Bitti ... \e[0m"
echo "********************************************************"
sleep 3
fi
sleep 2
done
echo "uykuya giriliyor"
sleep 90000
./yedekalma1.sh