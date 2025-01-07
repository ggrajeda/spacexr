browser()

devtools::load_all()

# List reporter example
# z <- testthat::test_file("~/Projects/spacexr/tests/testthat/test-snap-run.RCTD.replicates.R", reporter = ListReporter)
perf_dir <- "~/spacexr_perf/"
start_time <- lubridate::now()
test_name <- "sample"
z <- devtools::test_active_file(file = "~/Projects/spacexr/tests/testthat/test-snap-create.RCTD.R", reporter = ListReporter)
bind_cols(tibble(test_name, start_time), z)

#> names(z[[1]])
# [1] "file"    "context" "test"    "user"    "system"  "real"    "results"
# run tests and capture results
results <- test_local(reporter = ListReporter)
fileename <- stringr::str_glue("{perf_dir}/{as_integer(start_time}")


# Coverage example
library(covr)
coverage <- devtools::test_coverage()
# Save to a file
report(coverage, file = "coverage-report.html")

# MultiReporter Example
library(testthat)

# Example path to test file
test_file_path <- testthat_example("success")
library(testthat)
# Create a MultiReporter to combine multiple reporters
multi_reporter <- MultiReporter$new(
  reporters = list(
    SummaryReporter$new(),
    ProgressReporter$new(),
    FailReporter$new()
  )
)

# Run the test file with the multi-reporter
test_dir(testthat_examples(), reporter = multi_reporter)

# List Reporter
z <- testthat::test_file(testthat_examples(), reporter = ListReporter)


### devtools + listreporter

library(devtools)
library(testthat)
library(tibble)

# Create a ListReporter object
list_reporter <- ListReporter$new()

# Run tests in a specific directory with ListReporter
z <- devtools::test_active_file(file = "~/Projects/spacexr/tests/testthat/test-snap-create.RCTD.R", reporter = list_reporter)

# View the results

# Extract test results as a list
results_list <- as.list(list_reporter$results)

# Convert the list of results to a tibble
results_tibble <- tibble(
  test = names(results_list),
  passed = sapply(results_list, function(x) x$passed),
  failed = sapply(results_list, function(x) x$failed),
  skipped = sapply(results_list, function(x) x$skipped)
)

# View the tibble
results_tibble
