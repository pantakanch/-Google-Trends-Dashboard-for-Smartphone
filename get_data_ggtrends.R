library(tidyverse)
library(gtrendsR)
library(googlesheets4)

## sheet url
sheet_url <- "https://docs.google.com/spreadsheets/d/1jFSjC7TD9Xf5KnfPKy3Khu6Ph3IhVIkevbPtmwHCeVo"

## test function
# result <- gtrends(keyword = c("Samsung S23", "Oppo Find"),
#         geo = "TH", 
#         time = "today 12-m")
# 
# df <- result$interest_over_time[c("date", "hits", "keyword")]

## functional programming
td <- lubridate::today()
yd <- td-365
date_period <- paste(yd, td)

get_ggtrends <- function(kw, date=date_period) {
  ## get data from ggtrends
  result <- gtrends(keyword = kw,
                    geo = "TH",
                    time = date,
                    onlyInterest = TRUE)
  # clean data
  suppressWarnings(
    tmp <- result$interest_over_time[c("date", "hits")] %>%
      mutate(hits = hits %>% 
               as.numeric() %>%
               replace_na(0))
  )
  
  ## break 1 second
  print(paste0("Completed Keyword: ", kw))
  Sys.sleep(1)
  
  ## return clean dataset
  return(tmp)
}

## test function
get_ggtrends("Samsung S23", date_period)
get_ggtrends("Oppo Find", date_period)

## list of keywords
list_kw <- list(
  samsung_s = "samsung s23",
  oppo_find = "oppo find",
  iphone = "iphone 15",
  xiomi = "xiaomi 14"
)

list_df <- lapply(list_kw, get_ggtrends)

## merge all data frame
full_df <- list_df %>%
  bind_rows(.id = "id") %>%
  pivot_wider(
    names_from = "id",
    values_from = "hits"
  )

## write data to google sheets
write_sheet(full_df, ss = sheet_url, sheet = "data_smartphone")
