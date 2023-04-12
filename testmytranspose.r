library(testthat)

source("mytranspose.R")

# matrix 테스트
myvar1 <- matrix(1:10, nrow=5, ncol=2)
myvar2 <- matrix(NA, nrow=0, ncol=0)


# matrix - mytranspose 테스트
test_that("mytranspose should work for matrix input", {
  expect_equal(mytranspose(myvar1), t(myvar1))
  expect_equal(mytranspose(myvar2), t(myvar2))
})




