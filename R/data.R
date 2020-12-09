#' Get Covi19 Datasets
#'
#' @param level level = c("total", "municipality", "village")
#'
#' @return
#' @export
#'
#' @examples
covi19kosovo <- function(level = c("total", "municipality", "village")){
  level <- rlang::arg_match(level)
  if (level == "total"){
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries.csv") %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "municipality"){
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries_municipality.csv") %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "village"){
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries_cz.csv") %>%
      dplyr::select(-1)
    return(data)
  }
}
