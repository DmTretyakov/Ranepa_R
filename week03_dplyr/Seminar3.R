#задача 1 
dataset1 <- as.data.frame(cbind(observationA = 8:16, observationB = c(20:19, 6:12)))
# Найти первое вхождение (номер аргумента), который больше
#предыдущего
f <- function(x){
  
}

# Проверить есть ли число 20 в колонке
twenty <- function(x){
  
}



# Смотрим наш датасет с проекта






#dplyr
library(dplyr)
library(ggplot2)
#select (выбор колонок)          
df <- diamonds
df %>% select(c('carat','color','cut'))

select(df,c('carat','color','cut'))


#slice(выбор строк)
df %>% slice(1:10)


#Объединим две операции

df %>% 
  select(c('carat','color','cut')) %>%
  slice(1:2)


slice(select(df,c('carat','color','cut')),1:2)


# filter(выбор через условие)


df %>% filter(carat > 4)

df %>% filter(carat > 3  ,  depth > 50)

df %>% filter(carat > 3  ,  depth > 50, color == 'H')




#arrange (сортировка по столбцам)

df %>% arrange(carat)




#order()
order(df$carat)






#summarize(статистика)
df %>% summarise_all(mean)

df %>% summarise(mean(carat), max(x), median(y))



#mutate(преобразование столбцов)
df %>%
  mutate(carat = carat-mean(carat)) %>%
  pull()


###
fun <- function(x){
  return(x - mean(x))
}

sapply(df[,sapply(df,is.numeric)],fun )

df %>% mutate_if(is.numeric, funs(fun ))




#group_by

head(df)
df %>%
  select(c('cut','carat', 'x','y','z','price')) %>%
  group_by(cut) %>%
  summarise_all(mean)


df %>%
  group_by(cut) %>%
  summarise(mean = mean(price),
                number = n(),
                med = median(price))
