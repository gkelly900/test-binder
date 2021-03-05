bad_data = readr::read_csv("csvs/bad_data.csv")
good_data = readr::read_csv("csvs/good_data.csv")

# Starter functions you can use if you wish.
# You may need more than just those listed below.

assert_is_not_null <- function(data, column){
  # Skeleton for asserting 
  # a column in a dataframe does
  # not contain null values
  #
  # data: pandas DataFrame
  # column: str column name
  # 
  # Returns: Nothing yet 
  
}

assert_is_between <- function(data, column, lower, upper){
  # Skeleton for asserting 
  # a column is of type float
  # and only contains values between
  # lower and upper
  # 
  # data: pandas DataFrame
  # column: str column name
  # lower: float
  # upper: float
  # 
  # Returns: Nothing yet
  return(T)
}

assert_is_between <- function(data, column, lower, upper){
  # Skeleton for asserting 
  # a column contains only
  # the values in a list
  # 
  # data: pandas DataFrame
  # column: str column name
  # contains: list of values that can be in 
  #           column
  # 
  # Returns: Nothing yet
  
}
