kompleksita dalam kodingan ini :
algoritma menggunakan satu kali iterasi pada string yang di inputkan.
lalu operasi push dan pop dalam stack dilakukan dalam satu waktu untuk setiap elemen yang ada
contoh:
{ () [] }
Jika karakter pertama adalah bracket pembuka, maka karakter tersebut dimasukkan ke dalam stack untuk memastikan bahwa bracket tersebut memiliki pasangan yang sesuai, yaitu bracket tutup
-jika di tengah iterasi ada bracket yang tidak sesuai mislakan:
{)()[]}
yang di lakukan untuk bracket kedua  yang di lakukan adalah melakukan pop agar tidak masuk ke stack dan menghasilkan nilai NO atau false
dan iterasi langsung berhenti.
braket yang di simpan dalam stack hanyalah bracket terbuka contoh
{[]()}
iterasi 1 :
stack = [{]
iterasi 2 :
stack = [ {,[ ]
iterasi 3 karena bracket tutup maka di akan di pop
stack = [ {,[] ]
sehingga hasil dalam stack seperti berikut
stack =[ { ] karena bracket sebelum nya suda hilang.
iterasi 4 
stack =[ {,( ]
iterasi 5 sama dengan iterasi ke 3 
sehingga hasil nya 
[ {, () ]
sehingga di hilangkan 
hasil nya [ { ]
iterasi ke 6 adala bracket tertutup sehingga langsung di cocokan dengan stack sehingga langsung di hilankan dan hasil dari iterasi tersebut mengembalikan nila true 


menurut saya kompileksitas dalam algortima ini terletak pada waktu yang dapat menemukan bracket yang cocok dengan cepat karna semua bracket yang di inputkan setidak nya harus di periksa sekali sehingga lebih cepat menemukan pasangan dari bracket yang di simpan dalam stack dan jika tidak menemukan pasangan bracket yang sesuai maka akan langsung di pop dan tidak melakukan iterasi kembali.
jika menggunakan cara atau lagoritma di mana melakukan iterasi dua kali 
(loop pertama mencari bracket terbuka)
(loop kedua mencari bracket tertutup )
kurang efisien karena iterasi kedua harus memriksa semua bracket untuk mencari bracket tertutup dan memeriksa bracket yang lain. ini akan menjadi masalah jika inputan untuk bracket nya merupak string panjang atau braket yang banyak.
