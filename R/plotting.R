custom_theme <- function() {
    ggplot2::theme(
        panel.grid = ggplot2::element_blank(),
        axis.line = ggplot2::element_blank(),
        axis.text.x = ggplot2::element_blank(),
        axis.text.y = ggplot2::element_blank(),
        axis.ticks = ggplot2::element_blank(),
        axis.title.x = ggplot2::element_blank(),
        axis.title.y = ggplot2::element_blank(),
        panel.background = ggplot2::element_blank(),
        plot.background = ggplot2::element_blank(),
        plot.title = ggplot2::element_text(size = 18, hjust = 0.5),
        legend.text = ggplot2::element_text(size = 12, colour = "black"),
        legend.title = ggplot2::element_text(size = 12, colour = "black"),
    )
}

get_reject_mask <- function(rctd_spe) {
    if ("spot_class" %in% colnames(colData(rctd_spe))) {
        # Doublet mode
        return(colData(rctd_spe)$spot_class == "reject")
    } else if ("conf_list" %in% colnames(colData(rctd_spe))) {
        # Multi mode
        conf_lists <- colData(rctd_spe)$conf_list
        return(vapply(conf_lists, function(x) !any(x), logical(1)))
    }
    rep(FALSE, ncol(rctd_spe))
}

#' Plot pie charts of cell type proportions across pixels
#'
#' Generates a visualization where each pixel is represented by a pie chart
#' showing the proportions of different cell types at that location. Users
#' should run this function on the result of \code{\link{runRctd}}.
#'
#' This function is adapted from \code{vizAllTopics} in the \code{STdeconvolve}
#' package.
#'
#' @param rctd_spe \code{\link[SpatialExperiment]{SpatialExperiment}}
#'   containing RCTD results
#' @param assay_name character, name of the assay to plot
#'   (default: \code{"weights"})
#' @param cell_type_colors vector of colors for the different cell types
#'   (default: rainbow)
#' @param r numeric, radius of the pie charts (default: 0.4)
#' @param lwd numeric, line width of the pie chart borders (default: 1)
#' @param title character, plot title (default: \code{NA})
#'
#' @return \code{ggplot} object showing cell type proportions at each pixel
#'   using pie charts
#'
#' @importFrom SummarizedExperiment assay assayNames
#' @importFrom SpatialExperiment spatialCoords
#' @import ggplot2
#' @import scatterpie
#' @export
#' @examples
#' data(rctdSim)
#'
#' # In practice, results_spe should contain the results of an RCTD run.
#' results_spe <- rctdSim$proportions_spe
#' plotAllWeights(
#'     results_spe, r = 0.05, lwd = 0.5, title = "Cell Type Proportions"
#' )
#'
plotAllWeights <- function(
    rctd_spe, assay_name = "weights",
    cell_type_colors = NA,
    r = 0.4, lwd = 1,
    title = NA
) {
    # Type validity checks
    if (!inherits(rctd_spe, "SpatialExperiment")) {
        stop("rctd_spe must be a SpatialExperiment object")
    }

    if (!is.character(assay_name) || length(assay_name) != 1) {
        stop("assay_name must be a single character string")
    }
    if (!assay_name %in% assayNames(rctd_spe)) {
        stop(sprintf("Assay '%s' not found in rctd_spe", assay_name))
    }

    weights <- assay(rctd_spe, assay_name)
    weights_matrix <- as.matrix(weights)

    # Trick to ensure that all cell types are included in the legend.
    zero_rows <- rowSums(weights_matrix) == 0
    weights_matrix[zero_rows, 1] <- 1e-10

    reject_mask <- get_reject_mask(rctd_spe)
    weights_matrix[, reject_mask] <- 0

    # Transpose the matrix for plotting (cell types as columns for pie charts)
    weights_matrix <- t(weights_matrix)

    rctd_df <- data.frame(weights_matrix)
    rctd_df$reject <- as.integer(reject_mask)

    # Get spatial coordinates
    coords <- spatialCoords(rctd_spe)
    rctd_df$x_coords <- coords[, "x"]
    rctd_df$y_coords <- coords[, "y"]

    p <- ggplot2::ggplot() + ggplot2::coord_equal() + custom_theme()
    p <- p + scatterpie::geom_scatterpie(
        ggplot2::aes_string(x = "x_coords", y = "y_coords", r = "r"),
        data = rctd_df,
        cols = setdiff(colnames(rctd_df), c("x_coords", "y_coords")),
        lwd = lwd,
        legend_name = "Cell_Types"
    )
    if (is.na(cell_type_colors)) {
        cell_type_colors <- grDevices::rainbow(nrow(weights))
    }
    cell_type_colors <- c(as.vector(cell_type_colors), "#808080")
    p <- p + ggplot2::scale_fill_manual(values = cell_type_colors)
    if (!is.na(title)) {
        p <- p + ggplot2::ggtitle(title)
    }
    return(p)
}

#' Plot pixel proportions for a specific cell type
#'
#' Creates a visualization showing how the proportion of a specific cell type
#' varies across space, represented by point color intensity. Users should run
#' this function on the result of \code{\link{runRctd}}.
#'
#' This function is adapted from \code{vizTopic} in the \code{STdeconvolve}
#' package.
#'
#' @param rctd_spe \code{\link[SpatialExperiment]{SpatialExperiment}}
#'   containing RCTD results
#' @param cell_type character, name of cell type to plot
#' @param assay_name character, name of the assay to plot
#'   (default: \code{"weights"})
#' @param size numeric, size of the points (default: 10)
#' @param stroke numeric, border width of the points (default: 1)
#' @param alpha numeric, point transparency between 0 and 1 (default: 1)
#' @param low color for the low end of the proportion color scale
#'   (default: \code{"white"})
#' @param high color for the high end of the proportion color scale
#'   (default: \code{"red"})
#' @param title character, plot title (default: \code{NA})
#'
#' @return \code{ggplot} object showing the proportion of a specified cell type
#'   at each pixel
#'
#' @importFrom SummarizedExperiment assay assayNames
#' @importFrom SpatialExperiment spatialCoords
#' @import ggplot2
#' @export
#' @examples
#' data(rctdSim)
#'
#' # In practice, results_spe should contain the results of an RCTD run.
#' results_spe <- rctdSim$proportions_spe
#' plotCellTypeWeight(
#'     results_spe, "ct1", size = 5, title = "Cell Type Density (ct1)"
#' )
#'
plotCellTypeWeight <- function(
    rctd_spe, cell_type, assay_name = "weights",
    size = 10, stroke = 1, alpha = 1,
    low = "white", high = "red",
    title = NA
) {
    # Type validity checks
    if (!inherits(rctd_spe, "SpatialExperiment")) {
        stop("rctd_spe must be a SpatialExperiment object")
    }

    if (!is.character(cell_type) || length(cell_type) != 1) {
        stop("cell_type must be a single character string")
    }

    if (!is.character(assay_name) || length(assay_name) != 1) {
        stop("assay_name must be a single character string")
    }
    if (!assay_name %in% assayNames(rctd_spe)) {
        stop(sprintf("Assay '%s' not found in rctd_spe", assay_name))
    }

    if (!cell_type %in% rownames(assay(rctd_spe, assay_name))) {
        stop(sprintf(
            "Cell type '%s' not found in assay '%s'", cell_type, assay_name
        ))
    }

    weights <- assay(rctd_spe, assay_name)[cell_type, ]
    rctd_df <- data.frame(weights = as.numeric(weights))

    coords <- spatialCoords(rctd_spe)
    rctd_df$x_coords <- coords[, "x"]
    rctd_df$y_coords <- coords[, "y"]

    p <- ggplot2::ggplot() + ggplot2::coord_equal() + custom_theme()
    p <- p + ggplot2::geom_point(
        data = rctd_df,
        ggplot2::aes_string(x = "x_coords", y = "y_coords", fill = "weights"),
        shape = 21,
        size = size,
        stroke = stroke,
        alpha = alpha
    )
    p <- p + ggplot2::scale_fill_gradientn(
        limits = c(0, 1.0),
        breaks = c(0, 0.25, 0.5, 0.75, 1.0),
        colors = (grDevices::colorRampPalette(c(low, high)))(n = 100)
    )
    p <- p + ggplot2::guides(
        fill = ggplot2::guide_colorbar(
            title = "Proportion",
            title.position = "left",
            title.hjust = 0.5,
            ticks.colour = "black",
            frame.colour= "black",
            label.hjust = 0,
            title.theme = ggplot2::element_text(angle = 90)
        )
    )
    if (!is.na(title)) {
        p <- p + ggplot2::ggtitle(title)
    }
    return(p)
}
