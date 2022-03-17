library(httr)
library(magrittr)

#' Query the Austin Data API
#'
#' @param path Path to data resource.
#' @param query Additional path arguments.
#' 
#' @details 
#' You can set the limit of rows returned using the 
#' query parameter `$limit`, see 
#' (the developer documentation)[https://dev.socrata.com/docs/paging.html#2.1].
#'
#' @import httr
#' @import magrittr
#' @importFrom dplyr bind_rows
#'
#' @return an `austin_api` object
#' @export
austin_api <- function(
  path = "resource/mbnu-4wq9.json",
  query = list()
  ) {
  
  endpoint <-"https://data.austintexas.gov/"
  
  url <- modify_url(endpoint,
                    path = path,
                    query = query)
  
  response <- GET(url, add_headers(`X-App-Token` = Sys.getenv("AUSTIN_API_TOKEN")))
  
  if (http_type(response) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }
  
  content <- 
    jsonlite::fromJSON(
      txt = content(response, "text"), 
      simplifyVector = FALSE
      )
  
  if (http_error(response)) {
    stop(
      sprintf(
        "Austin API request failed [%s]\n%s", 
        status_code(response),
        content$message
      ),
      call. = FALSE
    )
  }
  
  citation <- list(
    source =  endpoint,
    url = url,
    retrieved = Sys.time()
  )
  
  structure(
    list(
      status = http_status(response),
      content = content %>% dplyr::bind_rows(),
      path = path,
      response = response,
      citation = citation
    ),
    class = "austin_api"
  )
}

print.austin_api <- function(x, ...) {
  cat("<Austin API ", x$path, ">\n", sep = "")
  print(x$content)
  invisible(x)
}
