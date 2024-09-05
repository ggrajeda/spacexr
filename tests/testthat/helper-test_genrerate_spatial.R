# helper-test_data_generators.R

# TODO WIP - make release ready
# Create simulated spatial data

# The configuration goes like this:
# for each region,
# name = list(location, size, mixture)

test_config <- list(
  A = list(location=c(x=1,y=1), size=c(x=2,y=2), mixture=c(ct1=0.1, ct2=0.0)),
  B = list(location=c(x=1,y=4), size=c(x=2,y=2), mixture=c(ct1=0.0, ct2=1)),
  C = list(location=c(x=4,y=1), size=c(x=2,y=2), mixture=c(ct3=1))
)

# convert a UTF-8 string to base 4 (bytewise bigendian),
#   where the digits are A,C,G,T
# Puropose: To create pseduo bar codes
# example: char2atcg("A") => "CAAC"
# "A" asici 65 (base 10) =>  01 10 00 10 => 2,0,2,1 => GAGC
char2atcg <- Vectorize(\(s) {
  x <- utf8ToInt(s)
  paste0(c("A", "C", "G", "T")[t(sapply(0:3,
     function(u) bitwAnd(bitwShiftR(x, u*2), 3))+1)], collapse = "")})

# enumerate the x,y positions (dots or "pixels") that are contained in each region.
regions_to_dots <- \(config) {
  results <- lapply(config, \(u) {
  start <- u$location
  end <- u$location + u$size
  v <- expand.grid(x = seq(from = start["x"], to = end["x"]),
              y = seq(from = start["y"], to = end["y"]))
  rownames(v) <- char2atcg(apply(v, 1, \(r) paste(r[1],r[2], sep = ",")))
  p2m(v)
  })
  results
}

# dimensions are reported in microns. For Visium the field size is roughly 6500x3200
# pixels are addressed as a lattice with spacing x=120um and y=70um
# To define a map, each map element is: (name, x, y, w, h, list(ct1=p1, ct2=p2....))
# the x,y, w, h are in pixel space. and get converted to micros on the way out

field_limit <- c(x=6500, y=3200)
step_size <- c(x=120, y=70)

p2m <- \(u) u * step_size
m2p <- \(u) u / step_size

pixel_limit <- floor(m2p(field_limit))

region_limits <- \(config) {
  m <- do.call(rbind, lapply(config, \(u) c(p2m(u$location),
                                            p2m(u$size + u$location))))
  list(x=range(m[,c(1,3)]), y=range(m[,c(2,4)]))
}


plot_regions <- \(config) {
  bounds <- region_limits(config)
  plot(NULL, xlim=bounds$x, ylim=bounds$y,
       xlab = "x (microns)",  ylab = "y (microns)", , asp = 1)
  colors <- adjustcolor(rainbow(length(config)), alpha.f = 0.4)
  for (i in seq_along(config)) {
    r <- config[[i]]
    loc <- p2m(r$location)
    upper <- p2m(r$size) + loc
    rect(xleft = loc["x"], ybottom = loc["y"],
         xright = upper["x"], ytop = upper["y"],
         col = colors[i])
  }
}
