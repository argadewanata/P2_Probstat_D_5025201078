# ============================ Soal 1 ===================================
  # 1A
    x <- c(78,75,67,77,70,72,78,74,77)
    y <- c(100,95,70,90,90,90,89,90,100)
    stdev_soal1 <- sd(x-y)
    print(stdev_soal1)
     
  # 1B
    var(x)
    var(y)
    t.test(x,y,paired = TRUE,var.equal = FALSE)
     
  # 1C
    # Pada soal 1B, didapatkan p-value sebesar `6.003e-05` 
    # yang mengakibatkan H0 ditolak. Hal tersebut dapat terjadi 
    # karena nilai dari p-value < H0. Oleh karena itu, H1 diterima 
    # menjadi hipotesis,yaitu "Terdapat pengaruh yang signifikan 
    # secara statistika dalam hal kadar saturasi oksigen, sebelum dan 
    # sesudah melakukan aktivitas A"
    
# ============================ Soal 2 ===================================
  # 2A
    # Setuju
    
  # 2B
    zsum.test(mean.x = 23500,sigma.x = 3900,n.x = 100,
              alternative = "less",mu = 20000)
    
  # 2C
    # Hipotesis awal (H0) diterima
    
    


    
   
   
