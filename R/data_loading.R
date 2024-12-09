load_X_vals <- function() {
  readRDS(system.file("extdata", "Qmat/X_vals.rds", package = "spacexr"))
}

get_X_vals <- memoise::memoise(load_X_vals)

#' Retrieves Q matrices from cache, populating the cache if necessary.
#' @return list of matrices
load_Q_all <- function() {
  if (!verify_Q_cache()) {
    cache_Q_all()
  }
  paths = vapply(1:5, cached_Q_mat_filepath, character(1))
  unlist(lapply(paths, readRDS), recursive=FALSE)
}

get_Q_all <- memoise::memoise(load_Q_all)

load_SQ_all <- function() {
  X_vals <- get_X_vals()
  Q_mat_all <- get_Q_all()
  lapply(Q_mat_all, function(x) solve_sq(x, X_vals))
}

get_SQ_all <- memoise::memoise(load_SQ_all)

#' Checks that a URL returns a 200 status code for a HEAD request
#' @param url character(1)
#' @return logical(1)
url_ok <- function(url) {
  httr::status_code(httr::HEAD(url)) == 200
}

remote_Q_mat_url <- function(n) {
  sprintf("https://mghp.osn.xsede.org/bir190004-bucket01/BiocRCTD/Q_mat_%d.rds", n)
}

cached_Q_mat_filepath <- function(n) {
  cache <- BiocFileCache::BiocFileCache()
  query_result <- BiocFileCache::bfcquery(cache, remote_Q_mat_url(n))
  if (nrow(query_result) > 1) {
    warning("Multiple cache entries found for Q matrix. Cleaning cache.")
    BiocFileCache::bfcremove(cache, query_result$rid[-1])
  }
  query_result$rpath[1]
}

verify_Q_cache = function() {
  Q_files = vapply(1:5, cached_Q_mat_filepath, character(1))
  all(vapply(Q_files, file.exists, logical(1)))
}

#' Place Q matrices in cache after retrieving them from the Bioconductor Open Storage Network
#' @return list of bfcadd results
cache_Q_all <- function() {
  if (!url_ok(remote_Q_mat_url(1L))) {
    stop("Could not load cached Q matrix. Did not receive header status 200 for ",
         remote_Q_mat_url(1L))
  }
  cache <- BiocFileCache::BiocFileCache()
  lapply(1:5, function(i) {
    BiocFileCache::bfcadd(cache, rname = remote_Q_mat_url(i), rtype = "web")})
}
