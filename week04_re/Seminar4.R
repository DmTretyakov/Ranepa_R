library(openxlsx)
setwd("C:/Users/Дима/Desktop/доп/проект")
df <- read.xlsx('changed_names.xlsx')




grep("a", c("abc", "def", "cba a", "aa"),  value=FALSE)
grep("a", c("abc", "def", "cba a", "aa"),  value=TRUE)

grepl("a", c("abc", "def", "cba a", "aa"))




#Каждый элемент в возвращаемом векторе указывает положение символа в 
#каждом соответствующем строковом элементе входного вектора, в котором
#было найдено (первое) совпадение с регулярным выражением.
regexpr("a+", c("abc", "def", "cba a", "aa"))



#Ищет все совпадения с re
gregexpr("a+", c("abc", "def", "cba a", "aa"), perl=TRUE)



x <- c("abc", "def", "cba", "aa")
m <- regexpr("a", x, perl=TRUE)

regmatches(x, m)



m <- gregexpr("a+", x, perl=TRUE)
regmatches(x, m)



x <- c("abc", "def", "cba a", "aa")
m <- regexpr("a", x, perl=TRUE)

regmatches(x, m)


gsub('1','','He1llo1')


sub("(a+)", "z\\1z", c("abc", "def", "cba a", "aa"), perl=TRUE)
sub("(a+)", "", c("abc", "def", "cba a", "aa"), perl=TRUE)

sub("(a+)(b+)", "z\\2z", c("abc", "def", "cba a", "aa"), perl=TRUE)




library(stringi)
stri_extract_first_regex(c("Pic 26+25", "Pic 123", "no pics"), "[0-9]{2}")



df$Money_month
stri_extract_first_regex(df$Money_month, "[0-9]+")









x <- "1d2ef12"
m <- gregexpr("1.2", x, perl=TRUE)

regmatches(x, m)




x <- "Hi, my names is Dima"
m <- regexpr("h", x, perl=TRUE)

regmatches(x, m)




x <- "hdfgh"
m <- regexpr("h{1,4}", x, perl=TRUE)

regmatches(x, m)


#Задания
#2
x <- c('придти','прейти','предти')








m <- regexpr("пр..ти", x, perl=TRUE)

regmatches(x, m)



#1
x <- c('1start7654end1','1start7364end1','1start9264end1')

m <- regexpr("\\d+", x, perl=TRUE)

regmatches(x, m)


m <- regexpr("1start\\d+end1", x, perl=TRUE)

regmatches(x, m)
sub('(1start)(\\d+)(end1)','\\2\\1\\3',x)
####
dd






m <- regexpr("start.*end", x, perl=TRUE)

regmatches(x, m)
sub("(start)(.*)(end)", "\\2", x, perl=TRUE)















df
df$Money_month
stri_extract_first_regex(df$Money_month, "[0-9]+")
names(df)



