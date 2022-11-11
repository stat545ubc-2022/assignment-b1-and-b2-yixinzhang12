test_that("Basic testing", {
  expect_equal(outdet(c(10,4,6,8,9,8,7,6,12,14,11,9,8,4,5,10,14,12,15,7,10,14,24,28), 3), 28)
  expect_equal(outdet(c(10,4,6,8,9,8,7,6,12,14,11,9,8,4,5,10,14,12,15,7,10,14,24,28), 4), "no outlier detected")
  expect_equal(outdet('popcorn', 5), "Please make sure the first input is a numeric vector.")
  expect_error(outdet(c(10,4,6,8,9,8,7,6,12,14,11,9,8,4,5,10,14,12,15,7,10,14,24,28)))
})
