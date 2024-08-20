# plot_puck_continuous simple test

    Code
      p1 <- plot_puck_continuous(mat$puck, barcodes, mat$puck@nUMI, ylimit = c(0,
        round(quantile(mat$puck@nUMI, 0.9))), title = "plot of nUMI")

