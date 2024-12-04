library(ggplot2)


set.seed(123)  
data <- data.frame(
  ID = 1:100,
  Kan_Sekeri = rnorm(100, mean = 130, sd = 30)  
)


data$Sekersiz <- ifelse(data$Kan_Sekeri < 126, "Saglıklı", "Seker Hastası")


ggplot(data, aes(x = Kan_Sekeri, fill = Sekersiz)) +
  geom_histogram(binwidth = 5, color = "black", alpha = 0.7) +
  scale_fill_manual(values = c("Saglıklı" = "green", "Seker Hastası" = "red")) +
  labs(title = "Kan sekeri Degerlerine Göre seker Hastalıgı Durumu",
       x = "Kan sekeri (mg/dL)",
       y = "Kisi Sayısı") +
  theme(plot.title = element_text(hjust = 0.5))
