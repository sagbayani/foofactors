#' Sample Table
#' 
#' @description Pull out a random sample of rows as a data.frame
#'
#' @param x data.frame
#' @param nsample number of rows to sample from tbl
#'
#' @return data.frame
#' @export
#' @import dplyr, assertthat
#'  
#' @examples
#' # randomly sample rows from a table (by default 10)
#' peek(iris)
#' # randomly sample 10 rows from a table
#' peek(iris, 10)



random_sample_table <- function(x, nsample=5){

  # Verify nsample is numeric
  assertthat::assert_that(assertthat::is.count(nsample))

  sample_table  <- x %>% 
    dplyr::as.tbl() %>%
    dplyr::mutate(original_nrow = 1:nrow(.)) %>%
    dplyr::sample_n(nsample) %>%
    as.data.frame()

  return(sample_table)
}

