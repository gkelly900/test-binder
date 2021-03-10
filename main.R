bad_data = readr::read_csv("csvs/bad_data.csv")
good_data = readr::read_csv("csvs/good_data.csv")

# Starter functions you can use if you wish.
# You may need more than just those listed below.

assert_is_not_null <- function(data, column){
  # Skeleton for asserting 
  # a column in a dataframe does
  # not contain null values
  #
  # data: Tibble or Other R Dataframe
  # column: character column name
  # 
  # Returns: Nothing yet 
  
}

assert_is_between <- function(data, column, lower, upper){
  # Skeleton for asserting 
  # a column is of type float
  # and only contains values between
  # lower and upper
  # 
  # data: Tibble or Other R Dataframe
  # column: str column name
  # lower: numeric
  # upper: numeric
  # 
  # Returns: Nothing yet

}

assert_is_enum <- function(data, column, contains){
  # Skeleton for asserting
  # a column contains only
  # the values in a list
  #
  # data: Tibble or Other R Dataframe
  # column: character column name
  # contains: vector of values that can be in the column
  # 
  # Returns: Nothing yet
  
}
