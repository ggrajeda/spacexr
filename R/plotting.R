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
        plot.title = ggplot2::element_text(size = 32, hjust = 0.5),
        legend.text = ggplot2::element_text(size = 12, colour = "black"),
        legend.title = ggplot2::element_text(size = 12, colour = "black"),
    )
}

#' Plot pie charts of cell type proportions across pixels
#'
#' Generates a visualization where each pixel is represented by a pie chart
#' showing the proportions of different cell types at that location.
#'
#' @param rctd_se SummarizedExperiment containing RCTD results
#' @param weights_assay character(1) name of the weights assay (default:
#'   "weights")
#' @param cell_type_colors vector of colors for the different cell types
#'   (default: rainbow)
#' @param r numeric(1) radius of the pie charts (default: 0.4)
#' @param lwd numeric(1) line width of the pie chart borders (default: 1)
#' @param plot_title character(1) plot title. (default: NA)
#'
#' @return ggplot object showing cell type proportions at each pixel using pie
#'   charts
#'
#' @importFrom SummarizedExperiment assay rowData
#' @import ggplot2
#' @import scatterpie
#' @export
plot_all_weights <- function(
    rctd_se, weights_assay = "weights",
    cell_type_colors = grDevices::rainbow(ncol(assay(rctd_se))),
    r = 0.4, lwd = 1,
    plot_title = NA
) {
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
    if (!is.na(plot_title)) {
        p <- p + ggplot2::ggtitle(plot_title)
    }
    return(p)
}

#' Plot pixel proportions for a specific cell type
#'
#' Creates a visualization showing how the proportion of a specific cell type
#' varies across space, represented by point color intensity.
#'
#' @param rctd_se SummarizedExperiment containing RCTD results
#' @param cell_type character(1) name of cell type to plot
#' @param weights_assay character(1) name of the weights assay (default:
#'   "weights")
#' @param size numeric(1) size of the points (default: 10)
#' @param stroke numeric(1) border width of the points (default: 1)
#' @param alpha numeric(1) point transparency between 0 and 1 (default: 1)
#' @param low character(1) color for the low end of the proportion color scale
#'   (default: "white")
#' @param high character(1) color for the high end of the proportion color scale
#'   (default: "red")
#' @param plot_title character(1) plot title. (default: NA)
#'
#' @return ggplot object showing the proportion of a specified cell type at each
#'   pixel
#'
#' @importFrom SummarizedExperiment assay rowData
#' @import ggplot2
#' @export
plot_cell_type_weight <- function(
    rctd_se, cell_type, weights_assay = "weights",
    size = 10, stroke = 1, alpha = 1,
    low = "white", high = "red",
    plot_title = NA
) {
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
        colors=(grDevices::colorRampPalette(c(low, high)))(n = 100)
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
    if (!is.na(plot_title)) {
        p <- p + ggplot2::ggtitle(plot_title)
    }
    return(p)
}
