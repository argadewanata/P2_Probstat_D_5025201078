# P2_Probstat_D_5025201078
Praktikum Probabilitas dan Statistik D Modul 1 oleh Rere Arga Dewanata (5025201078)  

## SOAL 1  
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴  

Responden | X | Y
-------   | - | -
1         | 78 | 100
2         | 75 | 95
3         | 67 | 70  
4         | 77 | 90
5         | 70 | 90
6         | 72 | 90
7         | 78 | 89
8         | 74 | 90
9         | 77 | 100  

### Soal 1A  
**Deskripsi Soal**  
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas!  

**Kode Program**    
```R
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
stdev_soal1 <- sd(x-y)
```  

**Penjelasan**  
Memasukkan nilai-nilai sebelum melakukan aktivitas A pada variabel x dan memasukkan nilai-nilai setelah melakukan aktivitas A pada variabel y menggunakan `c()`. Setelah memasukkan seluruh nilai tersebut, melakukan pencarian nilai dari standar deviasi dari selisih pasangan data dengan menggunakan `sd(x-y)`.  

**Screenshot**  
![1A](https://user-images.githubusercontent.com/70679432/170860569-773b4668-fabd-4cee-b0e9-b22637e2d9ec.jpeg)  

### Soal 1B  
**Deksripsi Soal**  
Carilah nilai t (p-value)!  

**Kode Program**  
```R
var(x)
var(y)
t.test(x,y,paired = TRUE,var.equal = FALSE)
```  

**Penjelasan**  
Mengecek nilai dari varians variabel x dan variabel y dengan menggunakan `var()`. Setelah diketahui bahwa varians kedua variabel berbeda, dilakukan pencarian dengan menggunakan `t.test()`. Pada `t.test()`, nilai dari `paired` bernilai TRUE karena data x dan y adalah sepasang. Selain itu, nilai dari `var.equal` adalah FALSE karena variabel x dan variabel y memiliki varians yang berbeda.  

**Screenshot**  
![1B](https://user-images.githubusercontent.com/70679432/170860677-b169b528-99a7-4f06-b4f7-2316f51f3521.jpeg)  

## Soal 1C
**Deskripsi Soal**  
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”  

**Penjelasan**  
Pada soal 1B, didapatkan p-value sebesar `6.003e-05` yang mengakibatkan H0 ditolak. Hal tersebut dapat terjadi karena nilai dari p-value < H0. Oleh karena itu, H1 diterima menjadi hipotesis,yaitu:   
"Terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A"    


