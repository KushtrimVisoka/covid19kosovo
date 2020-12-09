#' Get Covi19 Datasets
#'
#' @param level level = c("total", "municipality", "village")
#'
#' @return
#' @export
#'
#' @examples
covid19kosovo <- function(level = c("total", "municipality", "village")){

  level <- rlang::arg_match(level)

  if (level == "total"){
    if (file.exists(data)){
      file.remove(data)
    }
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries.csv") %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "municipality"){
    if (file.exists(data)){
      file.remove(data)
    }
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries_municipality.csv") %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "village"){
    if (file.exists(data)){
      file.remove(data)
    }
    data <- utils::read.csv("https://kushtrimvisoka.github.io/datasets/covid19kosovo_timeseries_cz.csv") %>%
      dplyr::select(-1)
    return(data)
  }
}
