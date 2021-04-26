boston <- read.table("C:/Projects/data_science_r/housing.data")

install.packages("gapminder")

library(dplyr)
library(gapminder)
glimpse(boston)

# 변수명 할당

names(boston) <- c('crim', 'zn', 'indus', 'chas', 'nox', 'rm', 'age', 'dis', 'rad', 
                   'tax', 'ptratio', 'black', 'lstat', 'medv')
glimpse(boston)

plot(boston)
summary(boston)
# git에 push 하는 과정 중 오류 발생
# 확인 결과 github에서 파일 삭제하였지만 local에는 파일이 남아있어서 생기는 오류
# pull을 사용하여 해결

# dplyr tutorial
i2 <- tbl_df(iris)
class(i2)
i2
glimpse(i2)

iris %>% head

#filter
filter(gapminder, country == 'Korea, Rep.')
filter(gapminder, year == 2007)
filter(gapminder, country == 'Korea, Rep.' & year == 2007)

gapminder %>% filter(country == 'Korea, Rep.')
gapminder %>% filter(year == 2007)
gapminder %>% filter(country == 'Korea, Rep.' & year == 2007)

#arrange
arrange(gapminder, year, country)
gapminder %>% arrange(year, country)

#select
select(gapminder, pop, gdpPercap)
gapminder %>% select(pop, gdpPercap)

#mutate