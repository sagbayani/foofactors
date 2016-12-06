context("Make a frequency table for a factor")

test_that("freq_out generate error", {
  expect_error(freq_out(iris))
  expect_error(freq_out(iris$Sepal))
  expect_error(freq_out(iris$Petal))
})

