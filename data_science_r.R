boston <- read.table("C:/Projects/data_science_r/housing.data")

library(dplyr)
glimpse(boston)

# 변수명 할당

# git에 push 하는 과정 중 오류 발생
# 확인 결과 github에서 파일 삭제하였지만 local에는 파일이 남아있어서 생기는 오류
# pull을 사용하여 해결