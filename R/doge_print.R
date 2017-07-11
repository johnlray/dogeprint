#' @title Generates A Random Google Image Result
#'
#' @description Contains a single function to print a Google Image Result to the graphics pane.
#'
#' @param doge_type
#'
#' @examples doge_print('australian sheepdog')
#'
#' @export
doge_print <- function(doge_type = "australian sheepdog"){
  ps = c("dplyr","ggplot2","grid","imager","rvest")
  new_p <- ps[!(ps %in% installed.packages()[,"Package"])]
  if(length(new_p) > 0) {install.packages(new_p)} else{}

  require(dplyr)
  require(ggplot2)
  require(grid)
  require(imager)
  require(rvest)

  terms = c(doge_type, tail(strsplit(doge_type, ' ', fixed = T)[[1]], 1), paste(strsplit(doge_type, ' ', fixed=T)[[1]][2:1], collapse = ' '))
  imstr = runif(n = 1, min = 1, max = 3) %>% round(0)
  term = terms[imstr]

  term = sub(" ", "+", term, fixed = T)
  url = paste0("https://www.google.com/search?site=&tbm=isch&source=hp&biw=1266&bih=684&q=", term, "&tbs=isz:s")

  page = read_html(url)
  node = html_nodes(page, xpath = '//img')

  img_i = runif(n = 1, min = 1, max = length(node)) %>% round(0)

  node = html_nodes(page, xpath = '//img')

  img_w = xml_attr(node, 'src')[img_i]

  img <- load.image(img_w)
  plot(img, axes=F)
  return(img)
}
