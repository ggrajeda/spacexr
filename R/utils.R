# Helper function for type validation
checkNumeric <- function(param_value, param_name) {
    if (!is.numeric(param_value) || length(param_value) != 1 ||
        is.na(param_value) || param_value < 0) {
        stop("'", param_name, "' must be a non-negative numeric value")
    }
}

# Helper function to get counts from SummarizedExperiment
getCounts <- function(se, se_name) {
    assays_se <- assays(se)
    assay_names <- assayNames(se)
    if (length(assays_se) == 0) {
        stop("No assays in ", se_name, ".")
    }
    if (length(assays_se) > 1 && "counts" %in% assay_names) {
        warning("Multiple assays in ", se_name, ". Choosing 'counts' assay.")
        return(assay(se, "counts"))
    }
    if (length(assays_se) > 1) {
        warning("Multiple assays in ", se_name, ". Choosing the first assay.")
    }
    assay(se)
}
