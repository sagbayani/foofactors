context("Pulling a random sample of data into a table")

test_that("random_sample_table generate error", {
  expect_error(random_sample_table(iris,0.5))
  expect_error(random_sample_table(iris,"cormorant"))
  expect_error(random_sample_table(iris,"45-62"))
})

test_that("nrow of random_sample_table output is equal to nsample", {
  expect_equal(nrow(random_sample_table(iris)), 15)
  expect_equal(nrow(random_sample_table(iris, 12)), 12)
  expect_equal(nrow(random_sample_table(iris, 25)), 25)
})
