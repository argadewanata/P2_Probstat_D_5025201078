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
    
# ============================ Soal 3 ===================================
  # 3A
    # Hipotesis awal (H0) adalah Rata-rata saham di bandung sama dengan di Bali
    # Hipotesis alternatif (H1) adalah Rata-rata saham di bandung tidak sama dengan di Bali
  
  # 3B
    tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, 
              n.y = 27, alternative = "two.side", var.equal = TRUE)
    
  # 3C
    n1 <- 19
    n2 <- 27
    mean1 <- 3.64
    mean2 <- 2.79
    sd1 <- 1.67
    sd2 <- 1.32
    alpha <- 0.05
    df <- 2
    
    t_tabel <- qt(p=alpha/2,df=df,lower.tail = FALSE)
    print(t_tabel)
    
  # 3D
    sp <- sqrt(((n1-1)*sd1^2 + (n2-1)*sd2^2)/(df))
    print(sp)
    T_value <- (mean1-mean2)/(sp*sqrt((1/n1)+(1/n2)))
    print(T_value)
    
  # 3E
    # Nilai dari T_value adalah 0.41 masih berada di antara t_tabel (-4.303 < T_value < 4.303)
    
  # 3F
    # Hipotesis Awal (H0), yaitu "Rata-rata saham di bandung sama dengan di Bali" diterima
    
    
# ============================ Soal 4 ===================================
  # 4A
    DataKucingITS <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
    byGroup <- split(DataKucingITS, DataKucingITS$Group)
    grup1 <- byGroup$`1`
    grup2 <- byGroup$`2`
    grup3 <- byGroup$`3`
    
    qqnorm(grup1$Length,main = "Grup1")
    qqnorm(grup2$Length,main = "Grup2")
    qqnorm(grup3$Length,main = "Grup3")
    
  # 4B
    bartlett.test(DataKucingITS$Length, DataKucingITS$Group)
    
  # 4C
    model1 <- lm(DataKucingITS$Length~DataKucingITS$Group)
    summary(model1)
    
  # 4D
    # Nilai dari P-value adalah 0.6401
    
  # 4E
    av <- aov(Length ~ factor(Group), data = DataKucingITS)
    TukeyHSD(av) 
    
  # 4F
    library(ggplot2)
    ggplot(DataKucingITS, aes(x = Group, y = Length)) + 
           geom_boxplot(fill = "Red", colour = "black")  + 
           scale_x_discrete() + xlab("Group") + ylab("Length")
   
