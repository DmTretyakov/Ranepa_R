library(dplyr)
library(ggplot2)


dia <- diamonds
air <- airquality


ggplot(dia, aes(x = carat, y = price))


ggplot(dia, aes(x = carat, y = price))+
  geom_point()

ggplot(dia, aes(x = carat)) +
  geom_histogram()




ggplot(dia, aes(x = carat, y = price))+
  geom_point()+
  geom_smooth()



#Важная концепция
ggplot(dia)+
  geom_point(aes(x = carat, y = price))+
  geom_smooth(aes(x = carat, y = price))


#Добавляем цвет точек
ggplot(dia, aes(x = carat, y = price, color = cut))+
  geom_point()+
  geom_smooth()



ggplot(dia, aes(x = carat, y = price))+
  geom_point(aes(color = cut))+
  geom_smooth()



ggplot(dia, aes(x = carat, y = price, alpha = 0.5))+
  geom_point(aes(color = cut), size = 0.5)+
  geom_smooth()



ggplot(dia, aes(x = carat, y = price, alpha = 0.5))+
  geom_point(aes(color = cut), size = 0.5)+
  geom_smooth(color = 'red')



#
glimpse(air)


air_group <- group_by(air, Month)

y <- summarise(air_group, mean_temp = mean(Temp),
               mean_wind = mean(Wind))

#Куда добавить mean_wind, чтобы менялись только точки
ggplot(y, aes(Month, mean_temp, size = mean_wind))+
  geom_point()+
  geom_line()



