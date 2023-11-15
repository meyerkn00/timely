test_that("default output works", {
  expect_equal(timely(), paste0("test_", format(Sys.time(), format = "%m%d%y_%H.%M"), ".csv"))
})
