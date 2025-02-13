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

#' Plot pie charts of cell type proportions across pixels
#'
#' Generates a visualization where each pixel is represented by a pie chart
#' showing the proportions of different cell types at that location. Users
#' should run this function on the result of \code{\link{run.RCTD}}.
#'
#' @param rctd_se SummarizedExperiment containing RCTD results
#' @param use_full_weights logical, whether to use the full weights (in the
#'   "weights_full" assay) instead of the default weights (default: FALSE)
#' @param cell_type_colors vector of colors for the different cell types
#'   (default: rainbow)
#' @param r numeric, radius of the pie charts (default: 0.4)
#' @param lwd numeric, line width of the pie chart borders (default: 1)
#' @param title character, plot title (default: NA)
#'
#' @return ggplot object showing cell type proportions at each pixel using pie
#'   charts
#'
#' @importFrom SummarizedExperiment assay rowData
#' @import ggplot2
#' @import scatterpie
#' @export
#' @examples
#' data(rctd_simulation)
#' 
#' # In practice, results_se should contain the results of an RCTD run.
#' plot_all_weights(
#'     rctd_simulation$proportions_se,
#'     r = 0.05, lwd = 0.5, title = "Cell Type Proportions"
#' )
#' 
plot_all_weights <- function(
    rctd_se, use_full_weights = FALSE,
    cell_type_colors = NA,
    r = 0.4, lwd = 1,
    title = NA
) {
    weights_assay <- ifelse(use_full_weights, "weights_full", "weights")
    weights <- assay(rctd_se, weights_assay)
    rctd_df <- data.frame(as.matrix(weights))
    rctd_df$x_coords <- rowData(rctd_se)$x
    rctd_df$y_coords <- rowData(rctd_se)$y

    p <- ggplot2::ggplot() + ggplot2::coord_equal() + custom_theme()
    p <- p + scatterpie::geom_scatterpie(
        ggplot2::aes(x = x_coords, y = y_coords, r = r),
        data = rctd_df,
        cols = colnames(weights),
        lwd = lwd,
        legend_name = "Cell_Types"
    )
    if (is.na(cell_type_colors)) {
        cell_type_colors <- grDevices::rainbow(ncol(weights))
    }
    p <- p + ggplot2::scale_fill_manual(values = as.vector(cell_type_colors))
    if (!is.na(title)) {
        p <- p + ggplot2::ggtitle(title)
    }
    return(p)
}

#' Plot pixel proportions for a specific cell type
#'
#' Creates a visualization showing how the proportion of a specific cell type
#' varies across space, represented by point color intensity. Users should run
#' this function on the result of \code{\link{run.RCTD}}.
#'
#' @param rctd_se SummarizedExperiment containing RCTD results
#' @param cell_type character, name of cell type to plot
#' @param use_full_weights logical, whether to use the full weights (in the
#'   "weights_full" assay) instead of the default weights (default: FALSE)
#' @param size numeric, size of the points (default: 10)
#' @param stroke numeric, border width of the points (default: 1)
#' @param alpha numeric, point transparency between 0 and 1 (default: 1)
#' @param low color for the low end of the proportion color scale (default:
#'   "white")
#' @param high color for the high end of the proportion color scale (default:
#'   "red")
#' @param title character, plot title (default: NA)
#'
#' @return ggplot object showing the proportion of a specified cell type at each
#'   pixel
#'
#' @importFrom SummarizedExperiment assay rowData
#' @import ggplot2
#' @export
#' @examples
#' data(rctd_simulation)
#'
#' # In practice, results_se should contain the results of an RCTD run.
#' results_se <- rctd_simulation$proportions_se
#' plot_cell_type_weight(
#'     results_se, "ct1",
#'     size = 5, title = "Cell Type Density (ct1)"
#' )
#' 
plot_cell_type_weight <- function(
    rctd_se, cell_type, use_full_weights = FALSE,
    size = 10, stroke = 1, alpha = 1,
    low = "white", high = "red",
    title = NA
) {
    weights_assay <- ifelse(use_full_weights, "weights_full", "weights")
    weights <- assay(rctd_se, weights_assay)[, cell_type]
    rctd_df <- data.frame(as.matrix(weights))
    rctd_df$x_coords <- rowData(rctd_se)$x
    rctd_df$y_coords <- rowData(rctd_se)$y

    p <- ggplot2::ggplot() + ggplot2::coord_equal() + custom_theme()
    p <- p + ggplot2::geom_point(
        data = rctd_df,
        ggplot2::aes(x=x_coords, y=y_coords, fill=rctd_df[, 1]),
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
