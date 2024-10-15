# capture testthat ListReporter grid
library(testthat)
library(devtools)

# directory for the output
perf_dir <- "~/Projects/spacexr/tests/_perfHistory"
start_time <- lubridate::now()
test_name <- "test_dir"

file_path <- stringr::str_glue(perf_dir, test_name)
if (!dir.exists(file_path)) {
  dir.create(file_path, recursive = TRUE)
}

results <- list(start_time = start_time, test_name = test_name)
# list_reporter <- ListReporter$new()
r <- testthat::test_dir(path = "~/Projects/spacexr/tests/", reporter = ListReporter)
results["runs"] <- r
filename <- str_glue("{file_path}/{as.integer(start_time)}.rds")
print(str_glue("Results saved to {filename} at {as.character(lubridate::now())}"))
saveRDS(results, filename)
