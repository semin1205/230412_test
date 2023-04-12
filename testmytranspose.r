library(testthat)

# mytranspose 함수를 포함한 mytranspose.R 파일을 불러온다
source("mytranspose.R")

# matrix 테스트
myvar1 <- matrix(1:10, nrow=5, ncol=2)
myvar2 <- matrix(NA, nrow=0, ncol=0)
myvar3 <- matrix(c(1,2), nrow=1, ncol=2)
myvar4 <- matrix(c(1,2), nrow=2, ncol=1)

# matrix - mytranspose 테스트
test_that("mytranspose should work for matrix input", {
  expect_equal(mytranspose(myvar1), t(myvar1))
  expect_equal(mytranspose(myvar2), t(myvar2))
  expect_equal(mytranspose(myvar3), t(myvar3))
  expect_equal(mytranspose(myvar4), t(myvar4))
})

# vector 테스트
myvar1 <- c(1,2,NA,3)
myvar2 <- c(NA)
myvar3 <- c()

# vector - mytranspose 테스트
test_that("mytranspose should work for vector input", {
  expect_equal(mytranspose(myvar1), t(matrix(myvar1, nrow = length(myvar1))))
  expect_equal(mytranspose(myvar2), t(matrix(myvar2, nrow = length(myvar2))))
  expect_equal(mytranspose(myvar3), t(matrix(myvar3, nrow = length(myvar3))))
})

# dataframe 테스트
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)

# dataframe - mytranspose 테스트
test_that("mytranspose should work for dataframe input", {
  expect_equal(mytranspose(mydata3), t(as.matrix(mydata3)))
})
