#' Bind two factors
#'
#'
#'
#'
#' @param a factor
#' @param b factor
#'
#' @return
#' @export
#'
#' @examples
#' fbind(iris$Species[c(1, 51, 101)], PlantGrowth$Group[c(1, 11, 21)])
fbind <- function(a, b) {
  bound <- factor(c(as.character(a), as.character(b)))
  return(bound)
}

#in the definition of your function, click Insert Roxygen skeleton
#load_all() to simulate the function as loaded

# to test your function: (in console)
## (a <- factor(c("character", "hits", "your", "eyeballs")))
## (b <- factor(c("but", "integer", "when", "it", "counts")))
## fbind(a, b)

# in build pane, click Check to run R CMD check
## 0 errors, 1 warning, 0 notes
## R CMD Check succeeded
# warning is due to invalid license file.
# let's fix that now.
