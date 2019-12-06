SISOP(){

TestPing()
{
  ping -c 3 google.com
}

Browsing(){
  firefox
}

BuatEditBash()
{
  nama_file=$1
  subl $nama_file
}

IsiDirektori()
{
  ls -l
}

MenjalankanBash()
{
  nama_file=$1
  bash $nama_file
}

a=1;
while [[ a -eq 1 ]];
do
echo " "

echo "Menu Sisop :"
echo "1. Test Ping                        "
echo "2. Membuka Firefox                  "
echo "3. Membuat/Mengedit File Bash       "
echo "4. Menjalankan File Bash            "
echo "5. Kembali                          "
echo -n "Pilihan anda : "

read pilihan


if [[ $pilihan -eq 1 ]];
then
  echo " "
  TestPing

elif [[ $pilihan -eq 2 ]];
  then
  echo " "
  Browsing
  echo "Berhasil!"

  echo " "
  read -rsp $'Tekan enter untuk lanjut \n' -n1 key

elif [[ $pilihan -eq 3 ]];
then
  echo "Buat/Edit file"
  read nama_file
  BuatEditBash $nama_file

elif [[ $pilihan -eq 4 ]];
then
  IsiDirektori
  echo " "

  echo "Nama file yang ingin dijalankan : "
  read nama_file
  MenjalankanBash $nama_file

  echo " "
  echo " File Telah berjalan "

elif [[ $pilihan -eq 5 ]];
then
 break

else
  echo " "
  echo "Masukkan pilihan dengan benar!"

fi
done
}

SIFO(){
loop=1;
harga=0;
Jenis_Jen1=0;
Jenis_Jen2=0;
jenis_Jen3=0;



declare -a jum 
declare -a jen1
declare -a jen2
declare -a jen3

input_Data(){
  echo "=======DATA========"
  echo "Masukkan nama :"
  read nama
  echo "NIK :"
  read NIK
  echo "Masukkan nomor tlp :"
  read nomor
}

input_harga(){
  echo "=======HARGA========"
  echo "1. 1 Bulan = Rp 1.000.000 "
  echo "2. 1 Tahun = Rp 11.500.000 "
  echo "3. 5 Tahun = Rp 55.000.000 "
  echo " "
  read -p "Pilihan Lama Penyewaan Anda : " pil

  if [[ $pil -eq 1 ]]; 
  then 
    harga="1000000"
    la="1 Bulan"
  elif [[ $pil -eq 2 ]]; 
  then 
    harga="11500000"
    la="1 Tahun"
  elif [[ $pil -eq 3 ]]; 
  then 
    harga="55000000"
    la="5 Tahun"
else
  echo " "
  echo "MAAF TIDAK TERSEDIA"
  echo " "  

fi
}

lihat_Harga(){
    echo "======DATA======"
    echo "nama : $nama "
    echo "NIK : $NIK"
    echo "nomor tlp : $nomor"
    echo "Lama penyewaan : $la"
    echo "harga : $harga"
    echo " "
}

Pembelian (){
while [[ lanjut=1 ]]
do
echo "Apakah yakin ingin menyewa?"
echo "1) Iya"
echo "2) Tidak"
echo "pilihan: "
read lanjut;

case $lanjut in
  1)
    Cetak
    break
    ;;
  2)
    break
    ;;
esac
done
}

Cetak(){
  echo " "
  echo "=======BUKTI PEMBELIAN======="
  echo "nama : $nama "
  echo "NIK : $NIK"
  echo "nomor tlp : $nomor"
  echo "Lama penyewaan : $la"
  echo "harga : $harga"
  echo "=============================";
}

  

while [[ loop -eq 1 ]]; 
do
echo " "

  echo "            SELAMAT DATANG              "
  echo "    DIPELAYANAN PENYEWAAN APARTEMEN     "
  echo "========================================"
  echo "1. Input data pembelian                 "
  echo "2. input Lama penyewaan & Harga         "
  echo "3. view data diri dan pilihan           "
  echo "4. Lanjutkan Pembelian                  "
  echo "5. Kembali                              "
  echo "Pilihan : "
  read pilih
  echo " "

  case "$pilih" in
    1)
    input_Data
      ;;
    2)
    input_harga
      ;;
    3)
    lihat_Harga
      ;;
    4)
    Pembelian
      ;;
    5)
    break
      ;;
  esac

done
}

while [[ pilih=1 ]] 
do
clear
  echo "Menu :"
  echo "1. Sisop"
  echo "2. Aplikasi Penyewaan Apartemen"
  echo "3. Exit"
  echo "Pilih :"
  read pilih
  case $pilih in
    1 )
    SISOP
      ;;
    2 )
    SIFO
      ;;
    3 )
    exit
    ;;
  esac
done