#Сегондня мы разберем семейство функции apply
#Достаточно мощный аппарат, позволяющий работать с таблицами данных


#apply(X, MARGIN, FUN)
#Here:
#  -x: an array or matrix
#-MARGIN:  take a value or range between 1 and 2 to define where to apply the function:
#  -MARGIN=1`: the manipulation is performed on rows
#-MARGIN=2`: the manipulation is performed on columns
#-MARGIN=c(1,2)` the manipulation is performed on rows and columns
#-FUN: tells which function to apply. Built functions like mean, 
#median, sum, min, max and even user-defined functions can be applied>


#apply () принимает фрейм данных или матрицу в качестве
#входных данных и выдает выходные данные в векторе, списке или массиве

df <- mtcars
#Применяем к строкам
apply(df, 1, max)

apply(df, 2, mean)


#Можно писать свои функции
f <- function(x){
  return(x[1] + x[length(x)])
}

                       
apply(df, 2, f)

#Лямбда функции

apply(df,2,function (x) {sum(x^2)})


apply(df,2,function (x) {c(min(x),mean(x),max(x))})

#Функция lapply () полезна для выполнения операций над объектами списка и возвращает
#объект списка той же длины исходного набора. lappy () возвращает список 
#такой же длины, что и ввод, каждый элемент которого
#является результатом применения FUN к соответствующему элементу списка. 
#lapply () принимает список, 
#вектор или фрейм данных в качестве входных данных и выводит их в виде списка.


movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower)


movies_lower <-unlist(lapply(movies,tolower))
str(movies_lower)





#Функция sapply () принимает список, вектор или фрейм данных в качестве 
#входных данных и выдает выходные данные в векторе или матрице. 
#Это полезно для операций над объектами списка и возвращает объект
#списка той же длины исходного набора. Функция sapply () выполняет ту же функцию,
#что и функция lapply (),
#но возвращает вектор.
lapply(df, min)
sapply(df, min)

#?
x <- c(1,4,4,6,1)
sapply(x,mean)




below_ave <- function(x) {  
  ave <- mean(x) 
  return(x[x > ave])
}
dt_s<- sapply(df, below_ave)
dt_l<- lapply(df, below_ave)
identical(dt_s, dt_l)



below_inf <- function(x) {  
  ave <- mean(x) 
  return(x[x > -Inf])
}
sapply(df, below_inf)
lapply(df, below_inf)




#Попробовать apply с разными функциями
apply(df,2, below_ave)
apply(df,2, below_inf)

#Нет смысла использовать apply





#Написать функцию, которая будет для каждой колонки выводить только 
#отрицательные значения




negativ <- function(x){
  return(sapply(x,function(x) x[x<0]))
}

test_data <- as.data.frame(list(V1 = c(-9.7, 10, -10.5, -7.8, -8.9), 
                                V2 = c(NA, -10.2, 10.1, -9.3, -12.2), 
                                V3 = c(NA, NA, -9.3, 10.9, -9.8)))

negativ(test_data)














test_data <- as.data.frame(list(V1 = c(-9.7, -10, -10.5, -7.8, -8.9), 
                                V2 = c(NA, -10.2, -10.1, -9.3, -12.2), 
                                V3 = c(NA, NA, -9.3, -10.9, -9.8)))
#Напишите функцию na_rm которая заменяет все пропущенные значения в столбцах
#dataframe на соответствующее среднее значение.
na_rm <- function(x){
  
}


#Найти сумму положительных чисел во всех столбцах
positiv_sum <- function(x){
  
}


#Задача посложнее
#заменить только в числовых столбцах все отрицательные на их модуль
test_data <- as.data.frame(list(V1 = c(-9.7, -10, 10.5, -7.8, -8.9), 
                                V2 = c('100d', '-10.2', '-10.1', '-9.3', '-12.2'), 
                                V3 = c(3, 9, -9.3, -10.9, -9.8)))


      