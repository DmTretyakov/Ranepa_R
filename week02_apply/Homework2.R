df <- as.data.frame(list(V1 = c('1 100', '3 000', '5 600', '500', '200'), 
                         V2 = c(3, 9, -9.3, -10.9, -9.8)))

#Задание 1: преобразовать df так,чтобы первый столбец стал числовым(использовать
#функции семейства apply и sub,gsub)






#Далее написан пример использования функции tapply
#Данная функция вычисляет статистику по стобцу дата фреймя в зависимотсти
#от разбиения какой-либо категориальной переменной
data(iris)
tapply(iris$Sepal.Width, iris$Species, median)




library(ggplot2)
df <- diamonds
#Задание 2: Вычислить максимальную цену(столбец price) брилианта в зависимости 
#от его огранки(столбец cut)


