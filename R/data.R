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
    url <- "https://raw.githubusercontent.com/Kushtrimvisoka/datasets/main/covid19kosovo_timeseries.csv"
    rlang::inform(stringr::str_glue("Downloading data from {url}..."))
    data <- utils::read.csv(file = url) %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "municipality"){
    url <- "https://raw.githubusercontent.com/Kushtrimvisoka/datasets/main/covid19kosovo_timeseries_municipality.csv"
    rlang::inform(stringr::str_glue("Downloading data from {url}..."))
    data <- utils::read.csv(file = url) %>%
      dplyr::select(-1)
    return(data)
  } else if (level == "village"){
    url <- "https://raw.githubusercontent.com/Kushtrimvisoka/datasets/main/covid19kosovo_timeseries_cz.csv"
    rlang::inform(stringr::str_glue("Downloading data from {url}..."))
    data <- utils::read.csv(file = url) %>%
      dplyr::select(-1)
    return(data)
  }
}

#' Kosovo daily vaccination process
#'
#' @return
#' @export
#'
#' @examples
vaccination <- function(){
  url <- "https://raw.githubusercontent.com/Kushtrimvisoka/datasets/main/kosovo_dailyvaccinations.csv"
  rlang::inform(stringr::str_glue("Downloading data from {url}..."))
  data <- utils::read.csv(file = url) %>%
    dplyr::select(-1)
  return(data)
}
