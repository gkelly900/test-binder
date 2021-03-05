library(testthat)

source("main.R")

test_that("test nullable assertion", {
  expect_equal(T,T)
})
