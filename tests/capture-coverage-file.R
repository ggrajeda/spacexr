# capture testthat coverage file
# report on it with `report(coverage, file = "coverage-report.html")`
library(testthat)
library(covr)
library(devtools)

# directory for the output
perf_dir <- "~/Projects/spacexr/tests/_covrHistory"
start_time <- lubridate::now()
test_name <- "test_coverage"

file_path <- stringr::str_glue(perf_dir, test_name)
if (!dir.exists(file_path)) {
  dir.create(file_path, recursive = TRUE)
}

results <- list(start_time = start_time, test_name = test_name)
results["grid"] <- covr::package_coverage()
filename <- str_glue("{file_path}/{as.integer(start_time)}.rds")
print(str_glue("Results saved to {filename} at {as.character(lubridate::now())}"))
saveRDS(results, filename)
