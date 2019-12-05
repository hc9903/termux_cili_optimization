pkg in python -y
pkg in wget -y
wget https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all_ip.txt
echo "f=open('./trackers_all_ip.txt')" > ./mag.py
echo "ans=input()" >> ./mag.py
echo "for i in f.readlines():" >> ./mag.py
echo " if(i!='\n'):" >> ./mag.py
echo "  ans+=('&tr='+i[:-1])" >> ./mag.py
echo "print(ans)" >> ./mag.py
echo "f.close()" >> ./mag.py
python mag.py >> ./optimized_mag.txt
rm ./trackers_all_ip.txt
rm ./mag.py
