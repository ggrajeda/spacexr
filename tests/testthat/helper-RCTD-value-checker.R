#' rctd_result_list
#'
#' Extract a list of significant return values from a run.RCTD call for
#'         regression testing purposes. Shrunk down to keep tests reasonable small
#'         while still having a chance of detecting changes in the compuation.
#'
#'         This is not intended to be used for TDD or functional testing.
#'
#' @param u - an RCTD result
#'
#' @return list. Elements:
#'          rctd_results - a matrix or data.frame from the results slot, specific
#'              contents vary with the computation mode (see code)
#'          cell_type_info$renorm - The first member in the renorm list element
#'              from the list stored at the slot cell_type_info
#'
#' @examples
rctd_result_list <- \(u) {
   v <- u@results
  if (u@config$RCTDmode == "multi") {
    for (i in seq_along(v)) {
      v[[i]]$cell_id <- names(u@spatialRNA@nUMI)[i]
    }
    rctd_results <- as.data.frame(do.call(rbind, lapply(v, tibble::as_tibble)))
  } else if (u@config$RCTDmode == "full") {
      rctd_results <- v$weights
  } else if (u@config$RCTDmode == "doublet") {
      rctd_results <- v$results_df
  } else {
      stop(paste("Unknown RCTD mode", u@config$RCTDmode))
  }
  list(cell_type_info = u@cell_type_info$renorm[[1]],
       rctd_results = rctd_results)
}

#' near_equal - Nearly equal
#' Compare two datasets containing floating point values for equality
#' while ignoring very small descrepencies in the mantissa.
#'
#' Both base::all.equal ad all.equal check if the mean absolute differece
#' is small. This is unuseful (and misleadign).
#'
#' Matrix-like and data.frame-like objects are supported.
#'
#' @param a - the first object to compare
#' @param b - the second object to compare
#' @param ref_name - default "", text that will be attached to any report of differences found
#' @param epsilon - the maximum distance between any two values for them to be considered "nearly equal"
#'
#' @return - a data.frame. One row for each difference found. Columns are:
#'                  ref_name, row, column, a's value, b's value, if numeric, the difference a-b
#'             If 0 rows x 0 columns, the two objects are equal.
#'
#' @examples
#'    near_equal(result, result_multi, ref_name = "rctd_results")
#'     ref_name row col        a            b              diff
#'     rctd_results   5   6 617.0000 1.033454e+02  513.654611292082
#'     rctd_results   8   9   0.0000 1.000000e+00

near_equal <- \(a, b, ref_name = "", epsilon = .Machine$double.eps ^ 0.5) {
  almost_equal <- \(x, y) {
    if (typeof(x[1]) == "double")
      abs(x - y) <= epsilon
    else
      x == y
  }
  # TODO stop -> error return
  # TODO attributes (row names, column names)
  if (!identical(dim(a), dim(b))) {
    # TODO Better error message
    stop("dataframe dimensions not identical")
  }

  # Compare matrix-like objects
  if (inherits(a, c("Matrix", "matrix"))) {
    if (!inherits(b, c("Matrix", "matrix"))) {
      stop("a is matrix-like and b is not")
    }
    if (typeof(a[1]) == "double")
      r <- almost_equal(a, b)
    else
      r <- a == b
  } else {
    # Compare data.frame-like objects
    r <- mapply(\(u, v) {
      if (typeof(u) != typeof(v)) {
        stop("Incompatible types")
      }
      mapply(almost_equal, u, v)
    }, a, b)
  }
  r <- which(!r, arr.ind = TRUE)
  if (length(r) == 0) {
    r <- data.frame(ref_name = character(),
                    row=character(), col=character(),
                    a=character(), b=character(),
                    diff=character())
  } else {
    r <- do.call(rbind,
          apply(r, 1, function(u) {
            a=a[u[1], u[2]]
            b=b[u[1], u[2]]
            data.frame(ref_name, row=as.character(u[1]),
                       col=as.character(u[2]),
                       a=as.character(a),
                       b=as.character(b),
                       diff=as.character(ifelse(is.numeric(a), a-b, "")))
            }))
    rownames(r) <- NULL
  }
  r
}

rctd_results_equal <- \(a, b)
{
  result <- near_equal(a$rctd_results, b$rctd_results, ref_name = "rctd_results")
  result <- rbind(result,
        near_equal(a$cell_type_info, b$cell_type_info,
                   ref_name = "cell_type_info"))
  result
}

cside_results_equal <- \(a, b)
{
  coalesce_gene_list_dfs <- \(u) do.call(rbind, u@de_results$all_gene_list)

  near_equal(coalesce_gene_list_dfs(a), coalesce_gene_list_dfs(b),
            ref_name = "de_results$all_gene_list")
}


# Scientific notation, only, 8 sig figs
# for appropriate checking of floating point results
print_rctd_results <- \(u) {
  print(u$cell_type_info[[1]], max=99999, digits=5, scipen=-999)
  print(u$rctd_results, max=99999, digits=5, scipen=-999)
}

# TODO Roxygen
expect_rctd_results_equal <- function(a, b) {
  df <- rctd_results_equal(a, b)
  if (nrow(df) == 0) {
    succeed("The objects are equal")
  } else {
  fail_msg <- paste("Differences found:\n",
    paste(capture.output(print(df, row.names = FALSE)), collapse = "\n"))
  fail(fail_msg)
  }
}

# TODO Roxygen
expect_cside_results_equal <- function(a, b) {
  df <- cside_results_equal(a, b)
  if (nrow(df) == 0) {
    succeed("The objects are equal")
  } else {
    fail_msg <- paste("Differences found:\n",
                      paste(capture.output(print(df, row.names = FALSE)), collapse = "\n"))
    fail(fail_msg)
  }
}
